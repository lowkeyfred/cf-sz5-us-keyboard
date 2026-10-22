#!/usr/bin/env python3
"""Minimal dependency-free PE parser: headers, sections, imports, exports, resources, overlay."""
import sys, struct, math, json, os
from collections import Counter

def u8(b, o):  return b[o]
def u16(b, o): return struct.unpack_from('<H', b, o)[0]
def u32(b, o): return struct.unpack_from('<I', b, o)[0]
def u64(b, o): return struct.unpack_from('<Q', b, o)[0]

def entropy(data):
    if not data: return 0.0
    c = Counter(data); n = len(data)
    return -sum((v/n) * math.log2(v/n) for v in c.values())

class PE:
    def __init__(self, data):
        self.d = data
        if data[:2] != b'MZ': raise ValueError('not MZ')
        e_lfanew = u32(data, 0x3c)
        if data[e_lfanew:e_lfanew+4] != b'PE\0\0': raise ValueError('not PE')
        self.e_lfanew = e_lfanew
        coff = e_lfanew + 4
        self.machine = u16(data, coff)
        self.nsect = u16(data, coff + 2)
        self.timestamp = u32(data, coff + 4)
        self.symtab = u32(data, coff + 8)
        self.nsyms = u32(data, coff + 12)
        self.opt_size = u16(data, coff + 16)
        self.characteristics = u16(data, coff + 18)
        opt = coff + 20
        self.opt = opt
        self.magic = u16(data, opt)
        self.pe32plus = self.magic == 0x20b
        self.entry = u32(data, opt + 16)
        self.imagebase = u64(data, opt + 24) if self.pe32plus else u32(data, opt + 28)
        self.section_align = u32(data, opt + 32)
        self.file_align = u32(data, opt + 36)
        self.size_image = u32(data, opt + 56)
        self.size_headers = u32(data, opt + 60)
        self.subsystem = u16(data, opt + 68)
        self.dllchars = u16(data, opt + 70)
        self.dirs = []
        dd = opt + (112 if self.pe32plus else 96)
        self.ndirs = u32(data, opt + (108 if self.pe32plus else 92))
        for i in range(min(self.ndirs, 16)):
            self.dirs.append((u32(data, dd + i*8), u32(data, dd + i*8 + 4)))
        self.sections = []
        s = opt + self.opt_size
        for i in range(self.nsect):
            o = s + i*40
            name = data[o:o+8].rstrip(b'\0').decode('latin1')
            vsize = u32(data, o+8); vaddr = u32(data, o+12)
            rsize = u32(data, o+16); raddr = u32(data, o+20)
            chars = u32(data, o+36)
            self.sections.append(dict(name=name, vsize=vsize, vaddr=vaddr,
                                      rsize=rsize, raddr=raddr, chars=chars))
        self.overlay_off = max((x['raddr'] + x['rsize']) for x in self.sections) if self.sections else 0

    def sec_name(self, rva):
        for x in self.sections:
            if x['vaddr'] <= rva < x['vaddr'] + max(x['vsize'], x['rsize']):
                return x['name']
        return '?'

    def off(self, rva):
        for x in self.sections:
            if x['vaddr'] <= rva < x['vaddr'] + max(x['vsize'], x['rsize']):
                delta = rva - x['vaddr']
                if delta < x['rsize']:
                    return x['raddr'] + delta
        return None

    def cstr(self, rva):
        o = self.off(rva)
        if o is None: return None
        e = self.d.find(b'\0', o)
        return self.d[o:e].decode('latin1', 'replace')

    def imports(self):
        out = []
        if not self.dirs or self.dirs[1][1] == 0: return out
        rva = self.dirs[1][0]
        while True:
            o = self.off(rva)
            if o is None: break
            ilt, ts, fc, name_rva, iat = struct.unpack_from('<IIIII', self.d, o)
            if name_rva == 0: break
            dll = self.cstr(name_rva)
            funcs = []
            t = ilt or iat
            j = 0
            while True:
                to = self.off(t + j*(8 if self.pe32plus else 4))
                if to is None: break
                val = u64(self.d, to) if self.pe32plus else u32(self.d, to)
                if val == 0: break
                if val & (1 << (63 if self.pe32plus else 31)):
                    funcs.append('ord#%d' % (val & 0xffff))
                else:
                    funcs.append(self.cstr((val & 0x7fffffff) + 2) or '?')
                j += 1
                if j > 5000: break
            out.append((dll, funcs))
            rva += 20
        return out

    def exports(self):
        out = []
        if not self.dirs or self.dirs[0][1] == 0: return out
        rva = self.dirs[0][0]
        o = self.off(rva)
        if o is None: return out
        (chars, ts, maj, mnr, name_rva, base, nfuncs, nnames,
         addr_funcs, addr_names, addr_ords) = struct.unpack_from('<IIHHIIIIIII', self.d, o)
        for i in range(nnames):
            nr = u32(self.d, self.off(addr_names) + i*4)
            name = self.cstr(nr)
            ordv = u16(self.d, self.off(addr_ords) + i*2)
            fr = u32(self.d, self.off(addr_funcs) + ordv*4)
            out.append((name, fr))
        return out

    def _res_dir(self, base_off, off, depth, path, out):
        if depth > 3 or off + 16 > len(self.d): return
        n = u16(self.d, off + 12) + u16(self.d, off + 14)
        for i in range(n):
            e = off + 16 + i*8
            if e + 8 > len(self.d): return
            name_id = u32(self.d, e)
            off2 = u32(self.d, e + 4)
            if name_id & 0x80000000:
                so = base_off + (name_id & 0x7fffffff)
                ln = u16(self.d, so)
                nm = self.d[so+2:so+2+ln*2].decode('utf-16le', 'replace')
            else:
                nm = '#%d' % name_id
            if off2 & 0x80000000:
                self._res_dir(base_off, base_off + (off2 & 0x7fffffff), depth+1, path + [nm], out)
            else:
                do = base_off + off2
                if do + 16 > len(self.d): continue
                drva = u32(self.d, do)
                dsize = u32(self.d, do + 4)
                cp = u32(self.d, do + 8)
                out.append(dict(path=path + [nm], rva=drva, size=dsize, codepage=cp))

    def resources(self):
        out = []
        if not self.dirs or self.dirs[2][1] == 0: return out
        base = self.dirs[2][0]
        o = self.off(base)
        if o is None: return out
        self._res_dir(o, o, 0, [], out)
        return out

def main(path):
    data = open(path, 'rb').read()
    p = PE(data)
    print('file      :', path, len(data), 'bytes')
    print('machine   : 0x%04x %s' % (p.machine, {0x14c:'i386', 0x8664:'x86-64', 0xaa64:'ARM64'}.get(p.machine, '?')))
    print('magic     : 0x%x (%s)' % (p.magic, 'PE32+' if p.pe32plus else 'PE32'))
    print('subsystem :', p.subsystem, {2:'GUI', 3:'CUI', 9:'WinCE'}.get(p.subsystem,''))
    print('imagebase : 0x%x  entry: 0x%x  image: 0x%x' % (p.imagebase, p.entry, p.size_image))
    print('timestamp :', p.timestamp, __import__('datetime').datetime.utcfromtimestamp(p.timestamp).isoformat())
    print('chars     : 0x%04x  DllCharacteristics: 0x%04x' % (p.characteristics, p.dllchars))
    print('\nsections:')
    for s in p.sections:
        blob = data[s['raddr']:s['raddr']+s['rsize']]
        print('  %-8s va=%08x vsz=%08x raw=%08x rsz=%08x ent=%.2f %s' % (
            s['name'], s['vaddr'], s['vsize'], s['raddr'], s['rsize'],
            entropy(blob), 'RWX' if (s['chars'] & 0xe0000000) == 0xe0000000 else ('X' if s['chars'] & 0x20000000 else '')))
    print('\ndirs:', [(i, '0x%x' % a, '0x%x' % b) for i, (a, b) in enumerate(p.dirs) if b])
    print('\nimports:')
    for dll, fns in p.imports():
        print('  %s (%d)' % (dll, len(fns)))
        for f in fns:
            print('     ', f)
    ex = p.exports()
    if ex:
        print('\nexports:')
        for n, r in ex: print('  %s @ 0x%x' % (n, r))
    res = p.resources()
    if res:
        print('\nresources:')
        for r in res:
            print('  %-40s rva=0x%08x size=%d cp=%d' % ('/'.join(r['path']), r['rva'], r['size'], r['codepage']))
    print('\noverlay at 0x%x, %d bytes' % (p.overlay_off, max(0, len(data) - p.overlay_off)))
    if len(data) > p.overlay_off:
        ov = data[p.overlay_off:]
        print('overlay head:', ov[:64].hex())

if __name__ == '__main__':
    main(sys.argv[1])
