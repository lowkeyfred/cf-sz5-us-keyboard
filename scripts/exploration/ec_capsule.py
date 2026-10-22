#!/usr/bin/env python3
"""Panasonic/AMI EC update capsule decoder.

Container layout (as recovered from EcUpdate_SZ5M123_V100L19.exe resource 10/3003):

    offset 0x00  u32   unknown id / checksum-ish field (0x3E68C073 for V1.00L19)
    offset 0x04  u32   uncompressed image size (198656 = 0x30800)
    offset 0x08  ...   concatenated LZNT1 chunks (Windows RtlCompressBuffer,
                       COMPRESSION_FORMAT_LZNT1), each with the standard
                       2-byte chunk header

The payload is NOT encrypted.  Decompression is done with the real Windows
implementation (ntdll!RtlDecompressBuffer) so the result is authoritative.

Usage:
    python ec_capsule.py <capsule.bin> [-o out.bin] [--chunks]
"""
import argparse
import ctypes
import struct
import sys

COMPRESSION_FORMAT_LZNT1 = 2


def info(path):
    d = open(path, 'rb').read()
    uid, usize = struct.unpack_from('<II', d, 0)
    return d, uid, usize


def chunk_list(d, start=8):
    """Walk LZNT1 chunk headers; return list of (offset, header, size, compressed)."""
    out = []
    p = start
    while p + 2 <= len(d):
        hdr = struct.unpack_from('<H', d, p)[0]
        csize = (hdr & 0x0FFF) + 1
        if (hdr >> 12) & 0x7 != 3:
            break
        out.append((p, hdr, csize, bool(hdr & 0x8000)))
        p += 2 + csize
    return out


def decompress_ntdll(src, usize):
    ntdll = ctypes.WinDLL('ntdll')
    fn = ntdll.RtlDecompressBuffer
    fn.argtypes = [ctypes.c_ushort, ctypes.c_void_p, ctypes.c_ulong,
                   ctypes.c_void_p, ctypes.c_ulong, ctypes.POINTER(ctypes.c_ulong)]
    fn.restype = ctypes.c_ulong
    dst = ctypes.create_string_buffer(usize)
    final = ctypes.c_ulong(0)
    st = fn(COMPRESSION_FORMAT_LZNT1, dst, usize, src, len(src), ctypes.byref(final))
    if st != 0:
        raise RuntimeError('RtlDecompressBuffer failed, NTSTATUS=0x%08X' % st)
    return dst.raw[:final.value], final.value


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('capsule')
    ap.add_argument('-o', '--out')
    ap.add_argument('--chunks', action='store_true')
    a = ap.parse_args()

    d, uid, usize = info(a.capsule)
    print('file        : %s (%d bytes)' % (a.capsule, len(d)))
    print('u32 @0x00   : 0x%08X' % uid)
    print('image size  : %d (0x%X)' % (usize, usize))

    cl = chunk_list(d)
    print('LZNT1 chunks: %d, chunk payload total %d bytes, tail %d bytes' % (
        len(cl), sum(c[2] for c in cl), len(d) - (cl[-1][0] + 2 + cl[-1][2]) if cl else len(d) - 8))
    if a.chunks:
        from collections import Counter
        print('chunk size histogram:', Counter(c[2] for c in cl).most_common(8))
        for off, hdr, size, comp in cl[:8]:
            print('  chunk @0x%06x hdr=0x%04X size=%d compressed=%s' % (off, hdr, size, comp))

    out, final = decompress_ntdll(d[8:], usize)
    print('decompressed: %d bytes' % final)
    if a.out:
        open(a.out, 'wb').write(out)
        print('wrote', a.out)


if __name__ == '__main__':
    main()
