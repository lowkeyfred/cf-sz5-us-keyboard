#!/usr/bin/env python3
"""Extract the pristine EC firmware image from the official Panasonic updater.

The updater (EcUpdate_SZ5M123_V100L19.exe) carries the firmware as PE resource
10/3003/1033: a capsule of [u32 crc32(decompressed image)][u32 usize][LZNT1
chunks]. This script pulls it back out and writes two files into the work dir:

  ec_capsule_pristine.bin   the capsule exactly as stored in the updater
  ec_image_pristine.bin     the decompressed 0x30800-byte EC image (all later
                            build_* scripts take this as their base)

Usage:
  python extract_firmware.py                      # uses sz5env defaults
  python extract_firmware.py --updater PATH --work DIR
"""
import argparse
import struct

import sz5env

import ec_patch
from build_ecupdate2 import RSRC_RAW, RSRC_RVA, find_data_entries


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--updater', default=sz5env.UPDATER)
    ap.add_argument('--work', default=sz5env.WORK)
    a = ap.parse_args()

    exe = open(a.updater, 'rb').read()
    targets = find_data_entries(exe, {(10, 3003, 1033)})
    e3003 = targets[(10, 3003, 1033)]
    rva, size = struct.unpack_from('<II', exe, e3003)
    off = RSRC_RAW + (rva - RSRC_RVA)
    cap = exe[off:off + size]
    assert len(cap) == size, 'capsule truncated: %d != %d' % (len(cap), size)

    usize = struct.unpack_from('<I', cap, 4)[0]
    img = ec_patch.Ntdll().decompress(cap[8:], usize)
    assert len(img) == usize, 'decompressed %d != expected %d' % (len(img), usize)
    assert b'$AMIEC' in img, 'EC magic tag $AMIEC not found - wrong image?'

    out_cap = sz5env.w('ec_capsule_pristine.bin')
    out_img = sz5env.w('ec_image_pristine.bin')
    open(out_cap, 'wb').write(cap)
    open(out_img, 'wb').write(img)
    print('wrote %s (%d bytes)' % (out_cap, len(cap)))
    print('wrote %s (0x%X bytes, $AMIEC tag found)' % (out_img, len(img)))


if __name__ == '__main__':
    main()
