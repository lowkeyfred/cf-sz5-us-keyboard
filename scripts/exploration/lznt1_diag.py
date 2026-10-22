#!/usr/bin/env python3
"""Diagnose LZNT1 token stream on a chunk."""
import sys, struct

def walk(d, off, want, bitorder='lsb', maxprint=80, obits_mode='bitlen'):
    out = bytearray(); p = off; chunks = 0
    while len(out) < want and p + 2 <= len(d):
        hdr = struct.unpack_from('<H', d, p)[0]; p += 2
        csize = (hdr & 0x0FFF) + 1; comp = bool(hdr & 0x8000); sig = (hdr >> 12) & 7
        chunk = d[p:p+csize]
        print('chunk %d @0x%x hdr=%04x sig=%d comp=%s size=%d pos_in_out=0x%x' % (chunks, p-2, hdr, sig, comp, csize, len(out)))
        p += csize
        if sig != 3: print('  !! bad sig'); return out, p
        if not comp:
            out += chunk; chunks += 1; continue
        start = len(out); i = 0; ntok = 0
        while i < len(chunk):
            flags = chunk[i]; i += 1
            for b in range(8):
                bit = b if bitorder == 'lsb' else 7 - b
                if i >= len(chunk): break
                if not (flags >> bit) & 1:
                    out.append(chunk[i]); i += 1
                else:
                    if i + 1 >= len(chunk): i = len(chunk); break
                    phrase = chunk[i] | (chunk[i+1] << 8); i += 2
                    pos = len(out) - start
                    if obits_mode == 'bitlen':
                        obits = 4 if pos < 0x10 else pos.bit_length()
                    else:
                        obits = 4 if pos < 0x10 else min(12, 4 + (pos.bit_length() - 4))
                    length = (phrase >> obits) + 3
                    disp = (phrase & ((1 << obits) - 1)) + 1
                    if ntok < maxprint:
                        print('   pos=0x%04x phrase=%04x obits=%d len=%d disp=0x%x' % (pos, phrase, obits, length, disp))
                    ntok += 1
                    if disp > pos:
                        print('   !! disp>pos at chunk_off=0x%x outpos=0x%x' % (i, len(out)))
                        return out, p
                    src = len(out) - disp
                    for _ in range(length):
                        out.append(out[src]); src += 1
                if len(out) >= want: break
            if len(out) >= want: break
        chunks += 1
    return out, p

if __name__ == '__main__':
    path = sys.argv[1]
    d = open(path, 'rb').read()
    u1, usize = struct.unpack_from('<II', d, 0)
    print('u1=0x%x usize=%d' % (u1, usize))
    walk(d, 8, usize, bitorder=sys.argv[2] if len(sys.argv) > 2 else 'lsb')
