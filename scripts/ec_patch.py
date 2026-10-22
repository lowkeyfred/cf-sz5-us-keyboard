#!/usr/bin/env python3
"""Patch + repack a Panasonic/AMI EC capsule.

Pipeline:  capsule -> LZNT1 decode -> apply byte edits -> RtlCompressBuffer -> capsule
It then verifies that the new capsule decodes back to exactly the patched image.

Usage:
  python ec_patch.py in.bin -o out.bin --set 0x291FC=0001,0203
  python ec_patch.py in.bin -o out.bin --patch table.json
  python ec_patch.py in.bin --verbose            # round-trip test only

Both compression and decompression use the Windows LZNT1 implementation
(ntdll!RtlDecompressBuffer / RtlCompressBuffer), which is what EcUpdate itself
uses (resolved dynamically from ntdll).
"""
import argparse
import ctypes
import json
import struct
import sys

FMT_LZNT1 = 2
CHUNK = 4096


class Ntdll:
    def __init__(self):
        self.n = ctypes.WinDLL('ntdll')
        self.dec = self.n.RtlDecompressBuffer
        self.dec.argtypes = [ctypes.c_ushort, ctypes.c_void_p, ctypes.c_ulong,
                             ctypes.c_void_p, ctypes.c_ulong, ctypes.POINTER(ctypes.c_ulong)]
        self.dec.restype = ctypes.c_ulong
        self.ws = self.n.RtlGetCompressionWorkSpaceSize
        self.ws.argtypes = [ctypes.c_ushort, ctypes.POINTER(ctypes.c_ulong), ctypes.POINTER(ctypes.c_ulong)]
        self.ws.restype = ctypes.c_ulong
        self.comp = self.n.RtlCompressBuffer
        self.comp.argtypes = [ctypes.c_ushort, ctypes.c_void_p, ctypes.c_ulong, ctypes.c_void_p,
                              ctypes.c_ulong, ctypes.c_ulong, ctypes.POINTER(ctypes.c_ulong), ctypes.c_void_p]
        self.comp.restype = ctypes.c_ulong

    def decompress(self, src, usize):
        dst = ctypes.create_string_buffer(usize)
        final = ctypes.c_ulong(0)
        st = self.dec(FMT_LZNT1, dst, usize, src, len(src), ctypes.byref(final))
        if st != 0:
            raise RuntimeError('RtlDecompressBuffer 0x%08X' % st)
        if final.value != usize:
            raise RuntimeError('size mismatch %d != %d' % (final.value, usize))
        return dst.raw[:final.value]

    def compress(self, data):
        buf_size = ctypes.c_ulong(0)
        frag = ctypes.c_ulong(0)
        st = self.ws(FMT_LZNT1, ctypes.byref(buf_size), ctypes.byref(frag))
        if st != 0:
            raise RuntimeError('RtlGetCompressionWorkSpaceSize 0x%08X' % st)
        ws = ctypes.create_string_buffer(buf_size.value)
        out = ctypes.create_string_buffer(len(data) + CHUNK)
        final = ctypes.c_ulong(0)
        st = self.comp(FMT_LZNT1, data, len(data), out, len(out), CHUNK,
                       ctypes.byref(final), ws)
        if st != 0:
            raise RuntimeError('RtlCompressBuffer 0x%08X' % st)
        return out.raw[:final.value]


def split_container(d):
    uid, usize = struct.unpack_from('<II', d, 0)
    return uid, usize, d[8:]


def build_container(uid, image, payload):
    return struct.pack('<II', uid, len(image)) + payload


def apply_sets(image, sets):
    img = bytearray(image)
    for spec in sets:
        off_s, hex_s = spec.split('=', 1)
        off = int(off_s, 0)
        blob = bytes.fromhex(hex_s.replace(',', '').replace(' ', ''))
        if off < 0 or off + len(blob) > len(img):
            raise ValueError('patch out of range: %s' % spec)
        img[off:off + len(blob)] = blob
        print('  patch 0x%X <- %s (%d bytes)' % (off, blob.hex(), len(blob)))
    return bytes(img)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('capsule')
    ap.add_argument('-o', '--out')
    ap.add_argument('--set', action='append', default=[], help='0xOFFSET=hexbytes')
    ap.add_argument('--patch', help='JSON list of {"offset":..,"hex":".."} edits')
    ap.add_argument('--verbose', action='store_true')
    a = ap.parse_args()

    n = Ntdll()
    d = open(a.capsule, 'rb').read()
    uid, usize, payload = split_container(d)
    img = n.decompress(payload, usize)
    print('capsule   : %d B, id=0x%08X, image=%d B' % (len(d), uid, len(img)))

    edits = list(a.set)
    if a.patch:
        for e in json.load(open(a.patch)):
            edits.append('%d=%s' % (e['offset'], e['hex']))
    if edits:
        img = apply_sets(img, edits)

    payload2 = n.compress(img)
    cap2 = build_container(uid, img, payload2)
    back = n.decompress(payload2, len(img))
    ok = back == img
    print('repacked  : %d B payload (%+.1f%%), round-trip %s' % (
        len(payload2), 100.0 * (len(payload2) - len(payload)) / len(payload), 'OK' if ok else 'FAIL'))
    if not ok:
        print('!! repack verification failed', file=sys.stderr)
        return 1
    if a.out:
        open(a.out, 'wb').write(cap2)
        print('wrote', a.out)
    return 0


if __name__ == '__main__':
    sys.exit(main())
