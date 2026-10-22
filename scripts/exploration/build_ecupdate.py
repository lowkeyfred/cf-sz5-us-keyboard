#!/usr/bin/env python3
"""Build a patched EcUpdate exe by swapping the embedded EC capsule resource.

The EcUpdate exe stores the capsule as resource RCDATA #10/#3003 at file offset
0x48058 (rva 0xE3058).  Our repacked capsule is byte-identical in size, so the
resource can be replaced in place; the Authenticode signature is then stripped
(certificate table + PE checksum) so the file is a plain unsigned PE.
"""
import struct
import sys

RES_OFF = 0x48058          # file offset of RCDATA 10/3003 in the original exe
RES_SIZE = 134786
OVERLAY = 0x73A00          # start of the certificate table


def build(src_exe, capsule_path, out_exe):
    exe = bytearray(open(src_exe, 'rb').read())
    cap = open(capsule_path, 'rb').read()

    if len(cap) != RES_SIZE:
        raise SystemExit('capsule size %d != expected %d (would need PE rebuild)' % (len(cap), RES_SIZE))
    if exe[RES_OFF:RES_OFF + 8] != cap[:8]:
        raise SystemExit('resource offset mismatch: exe has %s' % exe[RES_OFF:RES_OFF + 8].hex())

    exe[RES_OFF:RES_OFF + RES_SIZE] = cap

    # strip certificate table (data directory #4) and truncate overlay
    e_lfanew = struct.unpack_from('<I', exe, 0x3c)[0]
    opt = e_lfanew + 24
    magic = struct.unpack_from('<H', exe, opt)[0]
    dd = opt + (112 if magic == 0x20b else 96)
    struct.pack_into('<II', exe, dd + 4 * 8, 0, 0)      # security dir
    struct.pack_into('<I', exe, opt + 64, 0)            # CheckSum
    del exe[OVERLAY:]

    open(out_exe, 'wb').write(exe)
    print('wrote %s (%d bytes)' % (out_exe, len(exe)))


if __name__ == '__main__':
    build(sys.argv[1], sys.argv[2], sys.argv[3])
