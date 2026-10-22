#!/usr/bin/env python3
"""Build EcUpdate_diag.exe from the pristine updater.

Fixes vs. the broken prior builder:
1. Capsule header dword0 = custom CRC of the decompressed image (FUN_00413ca0,
   table ecu_crc_table.bin) — NOT a magic constant. Wrong header => "Bad CRC" (0xD).
2. INI resource 10/3000 rewritten with SameVersionPolicy=0 so the version gate
   (FUN_00407e30, SameVersionPolicy default 2 = "no need to update") lets the
   same-version image flash.
3. Resource tree directory entries updated via FindResource semantics
   (subdirectory offsets are section-relative; data-entry RVA is absolute).

Layout decisions:
- New INI (69 B) stays at file 0x48028; capsule moves to file 0x480A0 (RVA 0xE30A0).
- This clobbers RT_GROUP_ICON(14/700)/RT_VERSION(16/1) metadata at 0x68EDC..0x68F22
  (cosmetic only — updater never reads them for flashing).
- Cert directory zeroed, overlay truncated at 0x73A00, PE checksum recalculated.

NEVER run the produced exe on the machine unless flashing is intended:
SameVersionPolicy=0 makes it flash without a same-version refusal.
"""
import struct
import sys

import sz5env

PRISTINE = sz5env.UPDATER
OUT = sz5env.w('EcUpdate_diag.exe')
RSRC_RAW = 0x46000
RSRC_RVA = 0xE1000
NEW3000_OFF = 0x48028
NEWCAP_OFF = 0x480A0
CERT_CUTOFF = 0x73A00

def _mk_crc32_msb_table(poly=0x04C11DB7):
    """Standard CRC-32 MSB-first table — byte-for-byte identical to the table
    stored at file offset 0x45B58 inside the updater (verified)."""
    t = []
    for i in range(256):
        c = i << 24
        for _ in range(8):
            c = ((c << 1) ^ poly) & 0xFFFFFFFF if (c & 0x80000000) else (c << 1) & 0xFFFFFFFF
        t.append(c)
    return t


TBL = _mk_crc32_msb_table()


def ecu_crc(data):
    crc = 0xFFFFFFFF
    for b in data:
        crc = ((crc << 8) & 0xFFFFFFFF) ^ TBL[((crc >> 24) ^ b) & 0xFF]
    return crc ^ 0xFFFFFFFF


def obfuscate(clean):
    """Original INI obfuscation: NUL after every 8 clean bytes (verified vs exe)."""
    out = bytearray()
    for i, b in enumerate(clean):
        out.append(b)
        if (i % 8) == 7:
            out.append(0)
    return bytes(out)


def find_data_entries(exe, wanted):
    """Walk resource tree; return {path: data-entry file offset}."""
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
            else:
                k = tuple(path + [nm])
                if k in wanted:
                    found[k] = RSRC_RAW + toff

    walk(0, [])
    return found


def pe_checksum(data, checksum_off):
    """Canonical PE/COFF checksum. NB: the whole 4-byte CheckSum field is
    skipped (the field content must not affect the result - verified against
    the original Panasonic updater, whose stored checksum this reproduces
    exactly). Fold carries to 16 bits after every word; add file length."""
    total = 0
    i = 0
    n = len(data)
    while i < n:
        if i == checksum_off:
            i += 4
            continue
        w = struct.unpack_from('<H', data, i)[0] if i + 2 <= n else data[i]
        total = (total + w) & 0xFFFFFFFF
        total = (total & 0xFFFF) + (total >> 16)
        i += 2
    total = (total & 0xFFFF) + (total >> 16)
    return (total + n) & 0xFFFFFFFF


def main():
    p = open(PRISTINE, 'rb').read()

    # sanity: reproduce original resource 3000 byte-for-byte
    orig_clean = b"[Settings]\r\nIniFileVersion=11\r\n"
    assert obfuscate(orig_clean) == p[0x48028 + 11:0x48028 + 11 + 34]
    assert struct.unpack_from('<I', p, 0x48028)[0] == ecu_crc(orig_clean)

    clean = b"[Settings]\r\nIniFileVersion=11\r\nSameVersionPolicy=0\r\n"
    obf = obfuscate(clean)
    res3000 = (struct.pack('<II', ecu_crc(clean), len(clean))
               + bytes([len(obf)]) + b'\xb0\x00' + obf)

    cap = open(sz5env.w('ec_capsule_diag.bin'), 'rb').read()
    img = open(sz5env.w('ec_firmware_diag.img'), 'rb').read()
    assert len(cap) < 0x21000  # any size fits the moved-capsule layout
    assert struct.unpack('<I', cap[:4])[0] == ecu_crc(img)

    exe = bytearray(p)
    targets = find_data_entries(exe, {(10, 3000, 1033), (10, 3003, 1033)})
    assert len(targets) == 2, targets
    e3000, e3003 = targets[(10, 3000, 1033)], targets[(10, 3003, 1033)]
    assert struct.unpack_from('<I', exe, e3003)[0] == 0xE3058  # capsule at original spot

    assert NEW3000_OFF + len(res3000) <= NEWCAP_OFF
    exe[NEW3000_OFF:NEWCAP_OFF] = b'\x00' * (NEWCAP_OFF - NEW3000_OFF)
    exe[NEW3000_OFF:NEW3000_OFF + len(res3000)] = res3000
    exe[NEWCAP_OFF:NEWCAP_OFF + len(cap)] = cap
    struct.pack_into('<II', exe, e3000, RSRC_RVA + (NEW3000_OFF - RSRC_RAW), len(res3000))
    struct.pack_into('<II', exe, e3003, RSRC_RVA + (NEWCAP_OFF - RSRC_RAW), len(cap))

    e_lfanew = struct.unpack_from('<I', exe, 0x3c)[0]
    opt = e_lfanew + 24
    struct.pack_into('<I', exe, opt + 64, 0)                    # CheckSum = 0 for calc
    struct.pack_into('<II', exe, opt + 96 + 4 * 8, 0, 0)        # security dir
    del exe[CERT_CUTOFF:]
    exe = bytearray(exe)
    cs = pe_checksum(bytes(exe), opt + 64)
    struct.pack_into('<I', exe, opt + 64, cs)
    open(OUT, 'wb').write(bytes(exe))
    print('wrote %s (%d bytes), checksum 0x%08X' % (OUT, len(exe), cs))


if __name__ == '__main__':
    sys.exit(main())
