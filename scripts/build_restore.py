#!/usr/bin/env python3
"""Build EcUpdate_restore_L19.exe: rollback tool = pristine L19 image +
SameVersionPolicy=0 INI. Needed because the ORIGINAL updater refuses to
flash L19 (same version, SameVersionPolicy=2 -> "no need to update").
Identical machinery to build_ecupdate2.py, different capsule/image/out.
"""
import struct
import importlib.util
import os

import sz5env


def _load(name):
    spec = importlib.util.spec_from_file_location(
        name, os.path.join(sz5env.ROOT, name + '.py'))
    m = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(m)
    return m


be2 = _load('build_ecupdate2')

IMG = sz5env.w('ec_image_pristine.bin')
OUT = sz5env.w('EcUpdate_restore_L19.exe')


def main():
    img = open(IMG, 'rb').read()
    assert len(img) == 0x30800
    ep = _load('ec_patch')
    n = ep.Ntdll()
    payload = n.compress(img)
    assert n.decompress(payload, len(img)) == img
    cap = struct.pack('<II', be2.ecu_crc(img), len(img)) + payload
    print('restore capsule: %d bytes, hdr crc 0x%08X' % (len(cap), be2.ecu_crc(img)))

    p = open(be2.PRISTINE, 'rb').read()
    orig_clean = b"[Settings]\r\nIniFileVersion=11\r\n"
    clean = b"[Settings]\r\nIniFileVersion=11\r\nSameVersionPolicy=0\r\n"
    obf = be2.obfuscate(clean)
    res3000 = (struct.pack('<II', be2.ecu_crc(clean), len(clean))
               + bytes([len(obf)]) + b'\xb0\x00' + obf)
    assert be2.obfuscate(orig_clean) == p[0x48028 + 11:0x48028 + 11 + 34]

    exe = bytearray(p)
    targets = be2.find_data_entries(exe, {(10, 3000, 1033), (10, 3003, 1033)})
    e3000, e3003 = targets[(10, 3000, 1033)], targets[(10, 3003, 1033)]
    assert struct.unpack_from('<I', exe, e3003)[0] == 0xE3058

    assert be2.NEW3000_OFF + len(res3000) <= be2.NEWCAP_OFF
    exe[be2.NEW3000_OFF:be2.NEWCAP_OFF] = b'\x00' * (be2.NEWCAP_OFF - be2.NEW3000_OFF)
    exe[be2.NEW3000_OFF:be2.NEW3000_OFF + len(res3000)] = res3000
    exe[be2.NEWCAP_OFF:be2.NEWCAP_OFF + len(cap)] = cap
    struct.pack_into('<II', exe, e3000, be2.RSRC_RVA + (be2.NEW3000_OFF - be2.RSRC_RAW), len(res3000))
    struct.pack_into('<II', exe, e3003, be2.RSRC_RVA + (be2.NEWCAP_OFF - be2.RSRC_RAW), len(cap))

    e_lfanew = struct.unpack_from('<I', exe, 0x3c)[0]
    opt = e_lfanew + 24
    struct.pack_into('<I', exe, opt + 64, 0)
    struct.pack_into('<II', exe, opt + 96 + 4 * 8, 0, 0)
    del exe[be2.CERT_CUTOFF:]
    exe = bytearray(exe)
    cs = be2.pe_checksum(bytes(exe), opt + 64)
    struct.pack_into('<I', exe, opt + 64, cs)
    open(OUT, 'wb').write(bytes(exe))
    print('wrote %s (%d bytes), checksum 0x%08X' % (OUT, len(exe), cs))


if __name__ == '__main__':
    main()
