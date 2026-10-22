#!/usr/bin/env python3
"""Build the FINAL (v9.2) patched EC firmware: v9.1 + kill Fn combos on F8/F11/F12.

v9 = v7 + exactly:
  E[0x0A] 0x4C->0xEC  ';'  NumLock ON -> KP+ (CT1'[0xEC]=0x79), OFF -> ';'
  E[0x3A] 0x45->0xEE  '0'  NumLock ON -> KP* (CT1'[0xEE]=0x7C), OFF -> '0'
  E[0x4A] 0x4D->0xF0  'P'  NumLock ON -> KP- (CT1'[0xF0]=0x7B), OFF -> CT2'[0xF0]=0x4D 'P'
       (v8test used 0xF3 -> CT2'[0xF3]=0x45='0': the P-becomes-0 bug)
  E[0x1C] 0xED->0x52  QUOTE direct wire: kills stock Fn+' -> kpasterisk
  E[0x2A] 0xF6->0x4E  '-'  direct wire: kills stock Fn+- -> kpminus
  E[0x4C] 0xFB->0x54  '['  direct wire: kills stock Fn+[ -> kpenter
  E[0x4E] 0x8B->0xCA  Home/End key -> T7128 pair (dead stock pair, zero users)
  T7128[20] 0x88->0x8B  (fw 0x29730) E=0xCA plain entry -> Home wire
  T7128[21] 0x84->0x8E  (fw 0x29731) E=0xCA Fn entry   -> End wire
       => plain = Home, Fn+ = End. Selection (h3_123a4, re-verified):
       (state_byte&2)==2 || Fn-held -> odd entry; plain non-modifier keys have
       bit1=0 (arrows machine-proven), Fn sets gp[-0xe4]&0x20 -> odd.

v9.2 = v9.1 + three T7128 odd:=even bytes (Fn+F8=F8, Fn+F11=F11, Fn+F12=F12).
v9.1 = v9 + one code byte (v9 = v7 + NumLock KP layer + End + Fn-kp cleanup): fn-layer flags/char patches (that region is the T1 handler
POINTER table from 0x29778 - v8.1 bricked the keyboard writing P[9]/P[14]/P[22];
NEVER write 0x29764+idx for idx>=0x14), CAD code patch (stock behavior disputed,
dropped), T7128 blanket (v8.1 lesson: keep stock Fn layer).

Usage: build_final.py 0x1f   (diag idx for backslash, single-parity)
NEVER flash without explicit user confirmation.
"""
import struct
import sys

import sz5env  # sets up sys.path, WORK, UPDATER
import ec_patch
from build_diag_crc import crc24, deficit
from fix_crc_sum import fix_crc_and_sum
from build_ecupdate2 import ecu_crc, obfuscate, find_data_entries, pe_checksum

BASE = sz5env.w('ec_image_pristine.bin')
OUT_IMG = sz5env.w('ec_firmware_SZ5_EN_final.img')
OUT_CAP = sz5env.w('ec_capsule_SZ5_EN_final.bin')
OUT_EXE = sz5env.w('EcUpdate_SZ5_EN_final.exe')
PRISTINE_EXE = sz5env.UPDATER
RSRC_RAW = 0x46000
RSRC_RVA = 0xE1000
NEW3000_OFF = 0x48028
NEWCAP_OFF = 0x480A0
CERT_CUTOFF = 0x73A00
E_OFF = 0x2969C

PATCHES = {
    0x0A: 0xEC,   # ';' key -> CT: ON -> CT1'[0xEC]=0x79=KP+, OFF -> CT2'=';'
    0x0B: 0x86,   # RCtrl  (v3 flash PROVED raw 0x0B = RCtrl: 0x4C there emitted ';')
    0x0C: 0x8D,   # Del    (slot15 nav 0x71)
    0x0D: 0xC2,   # RESTORE: sibling of Del pair is the <- arrow
    0x12: 0x11,   # LAlt   (user choice; wire 0x11 direct)
    0x13: 0x11,   # LAlt sib (JIS-only position, no live English key)
    0x20: 0x96,   # RESTORE: Fn key (v6's 0x8B made Fn emit Home -> raw 0x20 = Fn)
    0x28: 0xE7,   # RESTORE: digit 8 key = KP8 (v3 put Home here -> digit 8 became Home)
    0x36: 0x2E,   # RESTORE: '5' key (v1 wrongly Home)
    0x37: 0xD8,   # RESTORE: F6 key (v1 wrongly Home)
    0x3A: 0xEE,   # '0' key -> CT: ON -> CT1'[0xEE]=0x7C=KP*, OFF -> CT2'='0'
    0x1C: 0x52,   # QUOTE key DIRECT (stock 0xED: Fn+ -> kpasterisk via CT flip)
    0x2A: 0x4E,   # '-' key DIRECT (stock 0xF6: Fn+ -> kpminus)
    0x4C: 0x54,   # '[' key DIRECT (stock 0xFB: Fn+ -> kpenter)
    0x3C: 0x55,   # RESTORE: '=' key (v4 flash PROVED raw 0x3C = EQ; v4 Home wire made it Home)
    0x4A: 0xF0,   # 'P' key -> CT: ON -> CT1'[0xF0]=0x7B=KP-, OFF -> CT2'[0xF0]=0x4D='P'
    0x4E: 0xCA,   # Home/End key -> dead T7128 pair 20/21 (plain=Home, Fn=End)
    0x50: 0xFF,   # RESTORE: no live key at 0x50/0x51 (v4=0x55 & v5=0x8B both invisible)
    0x74: 0xB6,   # Menu   (slot24 nav 0x2F)
    0x75: 0x1B,   # RESTORE: 's' key (v1 wrongly Menu)
    0x78: 0x8A,   # Ins    (slot12 nav 0x70)
    0x7C: 0x88,   # PrtSc  (slot9 -> E0 7C)
    0x7D: 0xC5,   # RESTORE: -> arrow (v1 wrongly PrtSc)
    0x7E: 0x89,   # Pause  (slot2 -> E1 14 77)
    0x7F: 0x89,   # Pause sib (pristine FF, empty)
}

# T7128 body (0x2971C-0x2975B) is a pure [plain,Fn] wire-pair DATA table -
# the one fw region besides E proven safe to write. fn flags region 0x29764+idx
# for idx>=0x14 is the T1 handler POINTER table: NEVER write there (v8.1).
FW_PATCHES = [
    (0x29730, 0x88, 0x8B, 'T7128[20] E=0xCA plain entry: dead 0x88 -> Home wire'),
    (0x29731, 0x84, 0x8E, 'T7128[21] E=0xCA Fn entry:   dead 0x84 -> End wire'),
    (0x2973D, 0x84, 0x78, 'T7128[33] Fn entry of F11 (E=0xD0): SysRq wire 0x84 -> F11'),
    (0x2973F, 0x88, 0x07, 'T7128[35] Fn entry of F12 (E=0xD1): PrtSc/SysRq 0x88 -> F12'),
    (0x29751, 0xAD, 0x0A, 'T7128[53] Fn entry of F8  (E=0xDA): scroll wire 0xAD -> F8'),
]
CODE_PATCHES = [
    (0x10EA0, 0xE6, 0xFF, 'h3_10d7c CAD latch: cmp_s wire,0x66 -> 0xFF (never matches;'
                          ' user PROVED on stock L19 that Fn+BS = Ctrl+Alt+Del is stock'
                          ' behavior on the English keyboard - kills the reboot hazard)'),
]

def main():
    p = open(BASE, 'rb').read()
    probe = len(sys.argv) > 2 and sys.argv[2] == 'probe'
    if probe:
        out_img = sz5env.w('ec_firmware_v8probe.img')
        out_cap = sz5env.w('ec_capsule_v8probe.bin')
        out_exe = sz5env.w('EcUpdate_v8probe.exe')
    else:
        out_img, out_cap, out_exe = OUT_IMG, OUT_CAP, OUT_EXE
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
    # blanket: every pristine-FF idx without an explicit patch (and not the
    # backslash slot) gets the Home wire 0x8B. Only physically present keys
    # respond; among live keys only Home/End sits on an FF idx (its slot picks
    # CT2'[0xFF]=0x55, which is why it emitted '=').
    # probe mode (argv[2] == 'probe'): distinct letter markers instead, to
    # identify WHICH FF idx the Home/End key sits on.
    patches = dict(PATCHES)
    blanket = [i for i in range(128)
               if p[E_OFF + i] == 0xFF and i not in patches and i != 0x3E]
    MARKERS = [0x15,0x1D,0x24,0x2D,0x2C,0x35,0x3C,0x44,0x4D,0x1C,0x1B,0x23,
               0x2B,0x34,0x33,0x3B,0x42,0x4B,0x1A,0x22,0x21,0x2A,0x32,0x31,
               0x3A,0x16,0x1E,0x26,0x25,0x2E,0x36,0x3D,0x3E,0x46,0x45,0x4E,
               0x54,0x5B]
    CHART = {0x15:'q',0x1D:'w',0x24:'e',0x2D:'r',0x2C:'t',0x35:'y',0x3C:'u',
             0x44:'o',0x4D:'p',0x1C:'a',0x1B:'s',0x23:'d',0x2B:'f',0x34:'g',
             0x33:'h',0x3B:'j',0x42:'k',0x4B:'l',0x1A:'z',0x22:'x',0x21:'c',
             0x2A:'v',0x32:'b',0x31:'n',0x3A:'m',0x16:'1',0x1E:'2',0x26:'3',
             0x25:'4',0x2E:'5',0x36:'6',0x3D:'7',0x3E:'8',0x46:'9',0x45:'0',
             0x4E:'-',0x54:'[',0x5B:']'}
    assert not probe or len(blanket) <= len(MARKERS)
    for n, i in enumerate(blanket):
        patches[i] = MARKERS[n] if probe else 0x8B
    print('FF blanket: %d idxs -> %s' % (len(blanket),
          'DISTINCT MARKERS (probe)' if probe else '0x8B (Home)'))
    if probe:
        print('probe chart:')
        for n, i in enumerate(blanket):
            print('  E[0x%02X] = wire 0x%02X -> keyd "%s"' % (i, MARKERS[n], CHART[MARKERS[n]]))
    for idx, val in patches.items():
        img[E_OFF + idx] = val
    for off, old, new, why in FW_PATCHES + CODE_PATCHES:
        assert p[off] == old, 'fw[0x%X] expected 0x%02X got 0x%02X (%s)' % (off, old, p[off], why)
        img[off] = new
        print('fw[0x%X]: 0x%02X -> 0x%02X  %s' % (off, old, new, why))
    if bs:
        img[E_OFF + bs[0]] = 0x5D
    fix_crc_and_sum(img, 'final')
    # verify: diffs vs pristine = E patches + 0x218 + fine-adjust region only
    allowed = set(E_OFF + i for i in patches)
    allowed.update(off for off, old, new, why in FW_PATCHES + CODE_PATCHES)
    if bs:
        allowed.add(E_OFF + bs[0])
    allowed.update(range(0x218, 0x21A))
    allowed.update(range(0x21C, 0x280))
    allowed.update(range(0x2B453, 0x30800))  # 0xFF padding expanse (fix_crc_sum)
    bad = [off for off in range(len(img)) if img[off] != p[off] and off not in allowed]
    assert not bad, 'unexpected diffs at %s' % [hex(x) for x in bad[:20]]
    assert bytes(img[0x200:0x218]) == p[0x200:0x218]
    open(out_img, 'wb').write(bytes(img))
    print('wrote %s CRC=0x%04X sum=0x%04X' % (out_img, crc24(img), sum(img) & 0xFFFF))

    n = ec_patch.Ntdll()
    payload = n.compress(bytes(img))
    assert n.decompress(payload, len(img)) == bytes(img)

    cap = struct.pack('<II', ecu_crc(bytes(img)), len(img)) + payload
    open(out_cap, 'wb').write(cap)
    print('wrote %s (%d bytes)' % (out_cap, len(cap)))

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

    cs = pe_checksum(bytes(exe), opt + 64)
    struct.pack_into('<I', exe, opt + 64, cs)
    open(out_exe, 'wb').write(bytes(exe))
    print('wrote %s (%d bytes) checksum 0x%08X' % (out_exe, len(exe), cs))
    if not bs:
        print('WARNING: Backslash NOT patched (no diag idx given)')


if __name__ == '__main__':
    main()
