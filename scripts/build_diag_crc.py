#!/usr/bin/env python3
"""Fix ec_firmware_diag.img: write Validate CRC @0x218 + maintain sum(all)==0xA88D.

CRC (from PcOemEc_sib4.efi @0xb1c): init 0x00ffff00, per byte (skip 0x200-0x27F):
OR byte in, 8x (<<=1; if bit24: ^= 0x01102100). Stored = (reg>>8)&0xffff @0x218.
Sum invariant (3/3 firmwares): sum(all bytes) & 0xFFFF == u16 @0x20A (0xA88D),
which requires sum(everything except 0x20A/0x20B) == 0 mod 2^16.
Byte-table version: state s = reg>>8 (16-bit after each byte step),
s' = A[s>>8] ^ B[s&0xFF] ^ C[b]  (linear over GF(2)).
"""
import struct

import sz5env

POLY = 0x01102100

def _round8(x):
    for _ in range(8):
        x <<= 1
        if x & 0x1000000:
            x ^= POLY
    return x & 0xFFFFFF

A = [_round8(b << 16) >> 8 for b in range(256)]
B = [_round8(b << 8) >> 8 for b in range(256)]
C = [_round8(b) >> 8 for b in range(256)]

def crc24(img, ln=0x30800):
    s = 0xFFFF  # init reg 0x00ffff00 -> s = 0x00ffff
    for i in range(ln):
        if 0x200 <= i <= 0x27F:
            continue
        s = A[s >> 8] ^ B[s & 0xFF] ^ C[img[i]]
    return s & 0xFFFF

def deficit(b):
    return (sum(b[:0x20A]) + sum(b[0x20C:])) & 0xFFFF

def main():
    # sanity: table version == bit version on L17
    l17 = open(sz5env.w('ec_image_L17.bin'), 'rb').read()
    assert crc24(l17) == 0x73FD, hex(crc24(l17))
    img = bytearray(open(sz5env.w('ec_firmware_diag.img'), 'rb').read())
    TARGET = struct.unpack_from('<H', img, 0x20A)[0]  # keep pristine 0xA88D

    struct.pack_into('<H', img, 0x218, crc24(img))
    R = deficit(img)
    print('after CRC write: R=0x%04X' % R)

    PAD = [p for p in range(0x30100, 0x30800) if img[p] == 0xFF]
    pi = 0
    while R > 25500:
        pos = PAD[pi]; pi += 1
        for v in range(256):
            img[pos] = v
            struct.pack_into('<H', img, 0x218, crc24(img))
            R = deficit(img)
            if R <= 25500:
                print('coarse knob @0x%X=0x%02X -> R=0x%04X' % (pos, v, R))
                break
        else:
            continue
        break

    for p in range(0x21C, 0x280):  # CRC-skip region: fine adjust, no CRC impact
        if R == 0:
            break
        assert img[p] == 0xFF
        v = min(255, R)
        img[p] = 0xFF - v
        R -= v
    print('after fine adjust: R=0x%04X' % R)

    struct.pack_into('<H', img, 0x218, crc24(img))
    stored = struct.unpack_from('<H', img, 0x218)[0]
    total = sum(img) & 0xFFFF
    assert crc24(img) == stored
    assert total == TARGET, hex(total)
    assert R == 0
    p = open(sz5env.w('ec_image_pristine.bin'), 'rb').read()
    assert bytes(img[0x200:0x218]) == p[0x200:0x218]
    assert img[0x213] == 0x19 and img[0x20D] == 0x43
    print('FINAL: CRC=0x%04X sum=0x%04X R=0  ALL CHECKS PASS' % (stored, total))
    open(sz5env.w('ec_firmware_diag_crc.img'), 'wb').write(bytes(img))
    print('wrote ec_firmware_diag_crc.img')

if __name__ == '__main__':
    main()
