#!/usr/bin/env python3
"""Parse Intel flash descriptor region map from an SPI dump and dump region table."""
import sys, struct

NAMES = {0:'Descriptor',1:'BIOS',2:'ME',3:'GbE',4:'PDR',5:'EC',6:'DevExp',7:'BIOS2',
         8:'Microcode',9:'EC2',10:'DevExp2',11:'IE',12:'10GbE',13:'10GbE2',14:'Reserved',15:'Reserved'}

def parse(path):
    d = open(path,'rb').read()
    print('file %s size 0x%x' % (path, len(d)))
    print('descriptor sig 0x%08x (0x0ff0a55a expected)' % struct.unpack_from('<I', d, 0x10 - 0x10 + 0x00)[0])
    sig = struct.unpack_from('<I', d, 0x10)[0]
    print('FRBA(0x10)=0x%08x  FLMAP0(0x14)=0x%08x FLMAP1(0x18)=0x%08x FLMAP2(0x1c)=0x%08x' % (
        sig, struct.unpack_from('<I',d,0x14)[0], struct.unpack_from('<I',d,0x18)[0], struct.unpack_from('<I',d,0x1c)[0]))
    frba = struct.unpack_from('<I', d, 0x10)[0] & 0x1FF  # bits 0..8 -> base in 16B units
    base = frba << 4
    print('region table at 0x%x' % base)
    total = 0
    for i in range(16):
        v = struct.unpack_from('<I', d, base + i*4)[0]
        b = (v & 0x7FFF) << 12
        s = ((v >> 16) & 0x7FFF) << 12
        if s == 0:
            continue
        total += s
        print('  region %2d %-10s base=0x%08x size=0x%08x (%d KB) limit=0x%08x' % (
            i, NAMES.get(i,'?'), b, s, s//1024, b+s-1))
    print('sum of regions = 0x%x' % total)
    print('\nfirst 0x100 bytes of descriptor:')
    for off in range(0, 0x100, 16):
        ch = d[off:off+16]
        print('  %08x  %-47s  %s' % (off, ch.hex(' '), ''.join(chr(c) if 32 <= c < 127 else '.' for c in ch)))

if __name__ == '__main__':
    parse(sys.argv[1])
