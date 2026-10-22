#!/usr/bin/env python3
"""LZNT1 (MS-XCA) decompressor for the Panasonic/AMI EC capsule layout:
   [u32 unknown][u32 uncompressed_size][LZNT1 chunks...]
"""
import sys, struct

def lznt1_chunks(d, off, want, verbose=False):
    """Decompress concatenated LZNT1 chunks starting at off until want bytes produced."""
    out = bytearray()
    p = off
    while len(out) < want:
        if p + 2 > len(d):
            raise ValueError('truncated chunk header at 0x%x' % p)
        hdr = struct.unpack_from('<H', d, p)[0]
        p += 2
        csize = (hdr & 0x0FFF) + 1
        compressed = bool(hdr & 0x8000)
        sig = (hdr >> 12) & 0x7
        if verbose:
            print('  chunk @0x%06x hdr=0x%04x sig=%d comp=%s size=%d outpos=0x%x' % (
                p - 2, hdr, sig, compressed, csize, len(out)))
        if sig != 3:
            raise ValueError('bad chunk signature %d at 0x%x' % (sig, p - 2))
        chunk = d[p:p + csize]
        if len(chunk) < csize:
            raise ValueError('truncated chunk body')
        p += csize
        if not compressed:
            out += chunk
            continue
        # decompress this chunk
        start = len(out)          # output position of chunk start
        i = 0
        while i < len(chunk):
            flags = chunk[i]; i += 1
            for bit in range(8):
                if i >= len(chunk):
                    break
                if not (flags >> bit) & 1:
                    out.append(chunk[i]); i += 1
                else:
                    if i + 1 >= len(chunk):
                        i = len(chunk); break
                    phrase = chunk[i] | (chunk[i + 1] << 8); i += 2
                    pos = len(out) - start
                    if pos < 0x10:
                        obits = 4
                    else:
                        obits = pos.bit_length()      # 5..12
                    length = (phrase >> obits) + 3
                    disp = (phrase & ((1 << obits) - 1)) + 1
                    src = len(out) - disp
                    if src < start:
                        raise ValueError('negative displacement at 0x%x' % p)
                    for _ in range(length):
                        out.append(out[src]); src += 1
                        if len(out) >= want:
                            break
                if len(out) >= want:
                    break
            if len(out) >= want:
                break
    return bytes(out[:want]), p

def decompress_file(path):
    d = open(path, 'rb').read()
    u1, usize = struct.unpack_from('<II', d, 0)
    print('container: len=%d  u32_0=0x%08x  usize=%d (0x%x)' % (len(d), u1, usize, usize))
    out, end = lznt1_chunks(d, 8, usize, verbose=True)
    print('decompressed %d bytes, consumed up to 0x%x of %d' % (len(out), end, len(d)))
    return out

if __name__ == '__main__':
    out = decompress_file(sys.argv[1])
    dest = sys.argv[2]
    open(dest, 'wb').write(out)
    print('wrote', dest)
