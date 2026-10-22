#!/usr/bin/env python3
"""Build a probe updater exe: pristine updater + modified image capsule.

Probe semantics: INI is UNTOUCHED (SameVersionPolicy default 2). Run result:
  - "No need to update"  -> image passed the model check (that region is safe)
  - "This model is not supported." -> the model check READS that region
Never flashes either way (version gate stops first). Safe to run on the machine.
"""
import struct
import sys
import os
import importlib.util

import sz5env


def _load(name):
    spec = importlib.util.spec_from_file_location(
        name, os.path.join(sz5env.ROOT, name + '.py'))
    m = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(m)
    return m


ec_patch = _load('ec_patch')
be2 = _load('build_ecupdate2')

PRISTINE = sz5env.UPDATER
RSRC_RAW = 0x46000
RSRC_RVA = 0xE1000
NEWCAP_OFF = 0x480A0
CERT_CUTOFF = 0x73A00

ecu_crc = be2.ecu_crc


def find_data_entry(exe, wanted):
    found = {}
    def walk(rel, path):
        off = RSRC_RAW + rel
        n = (struct.unpack_from('<H', exe, off + 12)[0]
             + struct.unpack_from('<H', exe, off + 14)[0])
        for i in range(n):
            e = off + 16 + 8 * i
            name, toff = struct.unpack_from('<II', exe, e)
            nm = (name & 0x7fffffff) if (name & 0x80000000) else name
            if toff & 0x80000000:
                walk(toff & 0x7fffffff, path + [nm])
            elif tuple(path + [nm]) == wanted:
                found[wanted] = RSRC_RAW + toff
    walk(0, [])
    return found[wanted]


def pe_checksum(data, skip_off):
    total = 0
    for i in range(0, len(data), 2):
        if i == skip_off:
            continue
        w = struct.unpack_from('<H', data, i)[0] if i + 2 <= len(data) else data[i]
        total = (total + w) & 0xFFFFFFFF
        total = (total & 0xFFFF) + (total >> 16)
    total = (total & 0xFFFF) + (total >> 16)
    return (total + len(data)) & 0xFFFFFFFF


def build(image_path, out_path):
    img = open(image_path, 'rb').read()
    assert len(img) == 0x30800
    n = ec_patch.Ntdll()
    payload = n.compress(img)
    back = n.decompress(payload, len(img))
    assert back == img, "compress roundtrip failed"
    cap = struct.pack('<II', ecu_crc(img), len(img)) + payload
    print("capsule: %d bytes (payload %d)" % (len(cap), len(payload)))

    exe = bytearray(open(PRISTINE, 'rb').read())
    e3003 = find_data_entry(exe, (10, 3003, 1033))
    assert struct.unpack_from('<I', exe, e3003)[0] == 0xE3058
    assert NEWCAP_OFF + len(cap) <= 0x69A00
    exe[0x48058:0x480A0] = b'\x00' * (0x480A0 - 0x48058)
    exe[NEWCAP_OFF:NEWCAP_OFF + len(cap)] = cap
    struct.pack_into('<II', exe, e3003, RSRC_RVA + (NEWCAP_OFF - RSRC_RAW), len(cap))

    e_lfanew = struct.unpack_from('<I', exe, 0x3c)[0]
    opt = e_lfanew + 24
    struct.pack_into('<I', exe, opt + 64, 0)
    struct.pack_into('<II', exe, opt + 96 + 4 * 8, 0, 0)
    del exe[CERT_CUTOFF:]
    exe = bytearray(exe)
    struct.pack_into('<I', exe, opt + 64, pe_checksum(bytes(exe), opt + 64))
    open(out_path, 'wb').write(bytes(exe))
    print("wrote %s (%d bytes)" % (out_path, len(exe)))


if __name__ == '__main__':
    build(sys.argv[1], sys.argv[2])
