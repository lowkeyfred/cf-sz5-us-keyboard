#!/usr/bin/env python3
"""Build the FINAL v3 patched EC firmware (stock L19 code + E-table fixes only).

v3 (after v2 user report): E[0x0B]=0x4C ';' (cap between L and ' confirmed by
user; stock/v2 emitted RCtrl there) and E[0x28]=0x8B Home — the true Home/End
key: pristine 0xE7 -> CT1' -> kpequal (types '=' in terminals, which is why
v1/v2 "Home/End still ="). E[0x51] reverted to pristine FF (v2's Home there
was a misdiagnosis; the position is empty).

Full patch set (17 positions, 5 of which are explicit restores = pristine):
  E[0x0A]=0x86  RCtrl     E[0x0B]=0x4C  ';'      E[0x0C]=0x8D  Del
  E[0x0D]=0xC2  RESTORE <-               E[0x12]=E[0x13]=0x11  LAlt(+RAlt)
  E[0x28]=0x8B  Home (Home/End key)      E[0x36]=0x2E  RESTORE '5'
  E[0x37]=0xD8  RESTORE F6              E[0x3E]=0x5D  Backslash (single)
  E[0x50]=0x55  = (EQ)    E[0x74]=0xB6  Menu     E[0x75]=0x1B  RESTORE 's'
  E[0x78]=0x8A  Ins       E[0x7C]=0x88  PrtSc    E[0x7D]=0xC5  RESTORE ->
  E[0x7E]=E[0x7F]=0x89  Pause

Usage: build_final.py 0x1f   (diag idx for backslash, verified single-parity)
NEVER flash without explicit user confirmation.
"""
import struct
import sys

import sz5env  # sets up sys.path, WORK, UPDATER
import ec_patch
from build_diag_crc import crc24, deficit
from fix_crc_sum import fix_crc_and_sum
from build_ecupdate2 import ecu_crc, obfuscate, find_data_entries

BASE = sz5env.w('ec_image_pristine.bin')
OUT_IMG = sz5env.w('ec_firmware_final3.img')
OUT_CAP = sz5env.w('ec_capsule_final3.bin')
OUT_EXE = sz5env.w('EcUpdate_final3.exe')
PRISTINE_EXE = sz5env.UPDATER
RSRC_RAW = 0x46000
RSRC_RVA = 0xE1000
NEW3000_OFF = 0x48028
NEWCAP_OFF = 0x480A0
CERT_CUTOFF = 0x73A00
E_OFF = 0x2969C

PATCHES = {
    0x0A: 0x86,   # RCtrl  (slot4 -> E0 14 -> E0 1D)
    0x0B: 0x4C,   # ';'    (user-confirmed cap; stock/v2 emitted RCtrl here)
    0x0C: 0x8D,   # Del    (slot15 nav 0x71)
    0x0D: 0xC2,   # RESTORE: sibling of Del pair is the <- arrow
    0x12: 0x11,   # LAlt   (user choice; wire 0x11 direct)
    0x13: 0x11,   # LAlt sib (JIS-only position, no live English key)
    0x28: 0x8B,   # Home   (Home/End cap key; pristine 0xE7 -> CT1' -> kpequal)
    0x36: 0x2E,   # RESTORE: '5' key (v1 wrongly Home)
    0x37: 0xD8,   # RESTORE: F6 key (v1 wrongly Home)
    0x50: 0x55,   # =      (EQ key, wire 0x55)
    0x74: 0xB6,   # Menu   (slot24 nav 0x2F)
    0x75: 0x1B,   # RESTORE: 's' key (v1 wrongly Menu)
    0x78: 0x8A,   # Ins    (slot12 nav 0x70)
    0x7C: 0x88,   # PrtSc  (slot9 -> E0 7C)
    0x7D: 0xC5,   # RESTORE: -> arrow (v1 wrongly PrtSc)
    0x7E: 0x89,   # Pause  (slot2 -> E1 14 77)
    0x7F: 0x89,   # Pause sib (pristine FF, empty)
}



def main():
    p = open(BASE, 'rb').read()
    bs = None
    if len(sys.argv) > 1:
        k = int(sys.argv[1], 16)
        a = (2 * k) & 0x7F
        b = (2 * k + 1) & 0x7F
        # 0x3F is LIVE Left Shift on both keyboards (pristine E=0x12): patch the
        # even raw only; the odd sibling keeps its pristine LShift code.
        assert k == 0x1F, 'single-parity patch verified only for k=0x1F'
        assert p[E_OFF + b] == 0x12, 'sibling E[0x%02X] expected 0x12, got 0x%02X' % (b, p[E_OFF + b])
        bs = (a,)
        print('Backslash: diag idx 0x%02X -> patch E[0x%02X] = 0x5D ONLY (sibling 0x%02X stays LShift)' % (k, a, b))
    img = bytearray(p)
    for idx, val in PATCHES.items():
        img[E_OFF + idx] = val
    if bs:
        img[E_OFF + bs[0]] = 0x5D
    fix_crc_and_sum(img, 'final')
    # verify: diffs vs pristine = E patches + 0x218 + fine-adjust region only
    allowed = set(E_OFF + i for i in PATCHES)
    if bs:
        allowed.add(E_OFF + bs[0])
    allowed.update(range(0x218, 0x21A))
    allowed.update(range(0x21C, 0x280))
    allowed.update(range(0x2B453, 0x30800))  # 0xFF padding expanse (fix_crc_sum)
    bad = [off for off in range(len(img)) if img[off] != p[off] and off not in allowed]
    assert not bad, 'unexpected diffs at %s' % [hex(x) for x in bad[:20]]
    assert bytes(img[0x200:0x218]) == p[0x200:0x218]
    open(OUT_IMG, 'wb').write(bytes(img))
    print('wrote %s CRC=0x%04X sum=0x%04X' % (OUT_IMG, crc24(img), sum(img) & 0xFFFF))

    n = ec_patch.Ntdll()
    payload = n.compress(bytes(img))
    assert n.decompress(payload, len(img)) == bytes(img)

    cap = struct.pack('<II', ecu_crc(bytes(img)), len(img)) + payload
    open(OUT_CAP, 'wb').write(cap)
    print('wrote %s (%d bytes)' % (OUT_CAP, len(cap)))

    exe = bytearray(open(PRISTINE_EXE, 'rb').read())
    clean = (b'[Settings]' + bytes([13, 10]) + b'IniFileVersion=11' + bytes([13, 10])
             + b'SameVersionPolicy=0' + bytes([13, 10]))
    obf = obfuscate(clean)
    res3000 = (struct.pack('<II', ecu_crc(clean), len(clean)) + bytes([len(obf)])
               + bytes([0xB0, 0x00]) + obf)
    targets = find_data_entries(exe, {(10, 3000, 1033), (10, 3003, 1033)})
    assert len(targets) == 2
    e3000, e3003 = targets[(10, 3000, 1033)], targets[(10, 3003, 1033)]
    assert struct.unpack_from('<I', exe, e3003)[0] == 0xE3058
    exe[NEW3000_OFF:NEWCAP_OFF] = bytes(NEWCAP_OFF - NEW3000_OFF)
    exe[NEW3000_OFF:NEW3000_OFF + len(res3000)] = res3000
    exe[NEWCAP_OFF:NEWCAP_OFF + len(cap)] = cap
    struct.pack_into('<II', exe, e3000, RSRC_RVA + (NEW3000_OFF - RSRC_RAW), len(res3000))
    struct.pack_into('<II', exe, e3003, RSRC_RVA + (NEWCAP_OFF - RSRC_RAW), len(cap))
    e_lfanew = struct.unpack_from('<I', exe, 0x3c)[0]
    opt = e_lfanew + 24
    struct.pack_into('<I', exe, opt + 64, 0)
    struct.pack_into('<II', exe, opt + 96 + 4 * 8, 0, 0)
    del exe[CERT_CUTOFF:]
    exe = bytearray(exe)

    def pe_checksum(data, skip_off):
        total = 0
        for i in range(0, len(data) - 1, 2):
            if i == skip_off:
                continue
            total = (total + struct.unpack_from('<H', data, i)[0]) & 0xFFFFFFFF
            total = (total + (total >> 16)) & 0xFFFFFFFF
        if len(data) % 2:
            total = (total + data[-1]) & 0xFFFFFFFF
        return (total + len(data)) & 0xFFFFFFFF

    cs = pe_checksum(bytes(exe), opt + 64)
    struct.pack_into('<I', exe, opt + 64, cs)
    open(OUT_EXE, 'wb').write(bytes(exe))
    print('wrote %s (%d bytes) checksum 0x%08X' % (OUT_EXE, len(exe), cs))
    if not bs:
        print('WARNING: Backslash NOT patched (no diag idx given)')


if __name__ == '__main__':
    main()
