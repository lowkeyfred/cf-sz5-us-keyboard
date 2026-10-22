#!/usr/bin/env python3
"""Build diag2 probe (Backslash locator).

Base = ec_firmware_diag.img (the already-flashed diag image, pre-CRC-fix).
Change ONLY: the 37 still-FF E-table idxs get letter/digit marker wires (<0x80,
raw-send, 8042-translated, all distinct & visible). Then CRC@0x218 + sum@0x20A
are refixed with the build_diag_crc machinery. Every other key behaves exactly
as the current diag — user presses Backslash ONLY and reads the letter.

Marker chart (letter -> diag idx -> CANDIDATE stock positions):
  Key reports letter -> idx k -> raw = 2k or 2k+1 -> stock positions (2k)&0x7F,
  (2k+1)&0x7F.  WARNING: diag collapses parity — NEVER blanket-patch both
  candidates. Check the pristine E value of each first: a live sibling (e.g.
  0x3F = Left Shift, next to Backslash@0x3E) must keep its pristine value.
NEVER flash without explicit user confirmation.
"""
import struct
import sys

import sz5env  # sets up sys.path, WORK, UPDATER
import ec_patch
from build_diag_crc import crc24, deficit
from fix_crc_sum import fix_crc_and_sum
from build_ecupdate2 import ecu_crc, obfuscate, find_data_entries

BASE_IMG = sz5env.w('ec_firmware_diag.img')
OUT_IMG = sz5env.w('ec_firmware_diag2.img')
OUT_CAP = sz5env.w('ec_capsule_diag2.bin')
OUT_EXE = sz5env.w('EcUpdate_diag2.exe')

PRISTINE_EXE = sz5env.UPDATER
RSRC_RAW = 0x46000
RSRC_RVA = 0xE1000
NEW3000_OFF = 0x48028
NEWCAP_OFF = 0x480A0
CERT_CUTOFF = 0x73A00
E_OFF = 0x2969C

# idx -> marker wire (letter/digit, set-2). Distinct, all <0x80.
MARKERS = {
    0x01:0x15, 0x02:0x1D, 0x0E:0x24, 0x0F:0x2D, 0x11:0x2C, 0x12:0x35, 0x1B:0x3C,
    0x1F:0x44, 0x21:0x4D, 0x22:0x1C, 0x2B:0x1B, 0x2D:0x23, 0x31:0x2B,
    0x32:0x34, 0x33:0x33, 0x3B:0x3B, 0x40:0x42, 0x41:0x4B, 0x42:0x1A, 0x4B:0x22,
    0x30:0x32, 0x4D:0x21, 0x4E:0x2A, 0x51:0x31, 0x52:0x3A, 0x5D:0x16, 0x5F:0x1E,
    0x60:0x26, 0x61:0x25, 0x6B:0x2E, 0x6F:0x36, 0x70:0x3D, 0x72:0x3E, 0x76:0x46,
    0x7B:0x45, 0x7F:0x4E,
}
assert len(set(MARKERS.values())) == len(MARKERS) == 36

CHART = {  # wire -> set-1 name (what the user sees)
    0x15:'q',0x1D:'w',0x24:'e',0x2D:'r',0x2C:'t',0x35:'y',0x3C:'u',0x43:'i',0x44:'o',
    0x4D:'p',0x1C:'a',0x1B:'s',0x23:'d',0x2B:'f',0x34:'g',0x33:'h',0x3B:'j',0x42:'k',
    0x4B:'l',0x1A:'z',0x22:'x',0x21:'c',0x2A:'v',0x32:'b',0x31:'n',0x3A:'m',0x16:'1',
    0x1E:'2',0x26:'3',0x25:'4',0x2E:'5',0x36:'6',0x3D:'7',0x3E:'8',0x46:'9',0x45:'0',
    0x4E:'-',
}



def main():
    img = bytearray(open(BASE_IMG, 'rb').read())
    assert len(img) == 0x30800
    # 1. markers at FF idxs
    for k, w in MARKERS.items():
        assert img[E_OFF + k] == 0xFF, 'E[0x%02X]=0x%02X not FF' % (k, img[E_OFF + k])
        img[E_OFF + k] = w
    # 2. CRC + sum
    fix_crc_and_sum(img, 'diag2')
    # 3. invariants vs pristine header region
    p = open(sz5env.w('ec_image_pristine.bin'), 'rb').read()
    assert bytes(img[0x200:0x218]) == p[0x200:0x218]
    assert img[0x213] == 0x19 and img[0x20D] == 0x43
    open(OUT_IMG, 'wb').write(bytes(img))
    print('wrote %s  CRC=0x%04X sum=0x%04X' % (OUT_IMG, crc24(img), sum(img) & 0xFFFF))

    # 4. capsule
    n = ec_patch.Ntdll()
    payload = n.compress(bytes(img))
    assert n.decompress(payload, len(img)) == bytes(img)
    cap = struct.pack('<II', ecu_crc(bytes(img)), len(img)) + payload
    open(OUT_CAP, 'wb').write(cap)
    print('wrote %s (%d bytes)' % (OUT_CAP, len(cap)))

    # 5. exe: INI 3000 (SameVersionPolicy=0) + capsule 3003
    exe = bytearray(open(PRISTINE_EXE, 'rb').read())
    clean = (b"[Settings]" + bytes([13, 10]) + b"IniFileVersion=11" + bytes([13, 10])
             + b"SameVersionPolicy=0" + bytes([13, 10]))
    obf = obfuscate(clean)
    res3000 = (struct.pack('<II', ecu_crc(clean), len(clean)) + bytes([len(obf)]) + bytes([0xB0, 0x00]) + obf)
    targets = find_data_entries(exe, {(10, 3000, 1033), (10, 3003, 1033)})
    assert len(targets) == 2
    e3000, e3003 = targets[(10, 3000, 1033)], targets[(10, 3003, 1033)]
    assert struct.unpack_from('<I', exe, e3003)[0] == 0xE3058
    assert NEW3000_OFF + len(res3000) <= NEWCAP_OFF
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

    # 6. decode chart for the user
    print()
    print('BACKSLASH DECODE CHART (letter seen -> diag idx -> candidate stock positions):')
    inv = {}
    for k, w in MARKERS.items():
        inv.setdefault(CHART[w], []).append(k)
    for letter in sorted(inv):
        for k in inv[letter]:
            a = (2 * k) & 0x7F
            b = (2 * k + 1) & 0x7F
            print('  %-4s idx 0x%02X  -> candidates E[0x%02X], E[0x%02X] (verify siblings!)' % (repr(letter), k, a, b))


if __name__ == '__main__':
    main()
