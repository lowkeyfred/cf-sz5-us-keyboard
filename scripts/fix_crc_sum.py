"""Shared CRC + byte-sum fixer for EC firmware images (v3: scan-to-exact).

Invariants (verified on pristine/L17/diag, machine-proven by the diag flash):
    stored u16 @0x218 == crc24(image)        (CRC skip region 0x200-0x27F)
    sum(all bytes) & 0xFFFF == u16 @0x20A    (== 0xA88D; 0x20A-0x20B stay pristine)
  => deficit(image) == 0xA758, deficit = (sum except 0x20A/0x20B) & 0xFFFF.

Mechanism: the region 0x2B453..0x307FF is a 21KB pristine 0xFF expanse with
ZERO code references (checked in the full disasm); the running diag firmware
already carries ~250 modified bytes there, proving runtime safety.

Phase 1 (coarse): lower 0xFF padding bytes (consumed from 0x307FF downward,
cave 0x30706-0x3070D excluded) by (need - 300) where need = (R - target) mod
2^16 -- the modular wraparound turns "lower by X" into "raise by 2^16 - X".
Phase 2 (exact): the CRC rewrite re-randomises the deficit by +-510 (the two
stored CRC bytes are themselves sum participants), so an exact hit cannot be
reached by bookkeeping. Instead, scan fresh padding positions: for each, try
all 256 values; each candidate's CRC+deficit is computed directly and the
first value landing deficit == target exactly wins. With the phase-1 landing
within +-500 of target, one position hits with ~1/3 probability; the phase-1
slack (300) plus a nudge loop keeps the band covering the target.

Runs in ~10-60 s. No search blowups.
"""
import struct
import sys

import sz5env  # puts scripts/ on sys.path

from build_diag_crc import crc24, deficit

SUM_TARGET = 0xA88D
DEFICIT_TARGET = 0xA758  # SUM_TARGET - (0x8D + 0xA8)


def _rewrite_crc(img):
    struct.pack_into('<H', img, 0x218, crc24(img))


def fix_crc_and_sum(img, label=''):
    """Drive img to both invariants in place. Prints progress."""
    assert img[0x20A] == 0x8D and img[0x20B] == 0xA8, '0x20A-0x20B must stay pristine'

    pool = [p for p in range(0x307FF, 0x2B453 - 1, -1)
            if img[p] == 0xFF and not (0x30706 <= p <= 0x3070D)]
    # (the 0x30706-0x3070D guard is historical: early builds placed the raw>>1
    # code cave there; the shipped diag build uses 0x286AC instead, which is
    # below the pool range. The guard excludes nothing today but costs nothing.)
    assert len(pool) > 400, 'padding pool too small: %d' % len(pool)
    pi = 0
    lowered = []  # [pos, value] most-recent last, for exact raise-back

    def lower_more(n):
        nonlocal pi
        while n > 0:
            p = pool[pi]; pi += 1
            assert pi <= len(pool), 'padding pool exhausted'
            v = min(255, n)
            img[p] = 0xFF - v
            lowered.append([p, 0xFF - v])
            n -= v

    def raise_back(n):
        while n > 0 and lowered:
            e = lowered[-1]
            head = 0xFF - e[1]
            v = min(head, n)
            e[1] += v
            img[e[0]] = e[1]
            n -= v
            if e[1] == 0xFF:
                lowered.pop()
        assert n == 0, 'raise_back short of room: %d' % n

    def in_band(r):
        return -500 <= r - DEFICIT_TARGET <= 500

    _rewrite_crc(img)
    R = deficit(img)
    print('[%s] after CRC write: deficit=0x%04X (target 0x%04X)' % (label, R, DEFICIT_TARGET),
          flush=True)

    # phase 1: coarse lowering, land within +-500 of target (mod 2^16 wrap)
    lower_more(((R - DEFICIT_TARGET) & 0xFFFF) - 300)
    _rewrite_crc(img)
    R = deficit(img)
    print('[%s] coarse: deficit=0x%04X' % (label, R), flush=True)

    # phase 2: exact hit scan with band nudging
    nudge = 0
    while True:
        while not in_band(R):
            if R < DEFICIT_TARGET - 500:
                lower_more((R - (DEFICIT_TARGET - 500)) & 0xFFFF)
            else:  # R > DEFICIT_TARGET + 500
                lower_more(R - (DEFICIT_TARGET + 500))
            _rewrite_crc(img)
            R = deficit(img)
            nudge += 1
            assert nudge <= 40, 'cannot land in band'
        hit = False
        for _try in range(40):
            pos = pool[pi]; pi += 1
            assert pi <= len(pool)
            keep = img[pos]
            for v in range(256):
                img[pos] = v
                _rewrite_crc(img)
                if deficit(img) == DEFICIT_TARGET:
                    hit = True
                    break
            if hit:
                print('[%s] exact hit: pool[0x%X]=0x%02X (tried %d positions, %d nudges)'
                      % (label, pos, v, _try + 1, nudge), flush=True)
                break
            img[pos] = keep
        if hit:
            break
        # shift the band by an odd amount and rescan
        lower_more(613 + nudge * 97)
        _rewrite_crc(img)
        R = deficit(img)
        print('[%s] scan missed 40 positions, deficit=0x%04X; band shifted' % (label, R),
              flush=True)

    stored = struct.unpack_from('<H', img, 0x218)[0]
    assert crc24(img) == stored, 'CRC mismatch'
    total = sum(img) & 0xFFFF
    assert total == SUM_TARGET, 'sum 0x%04X != 0x%04X' % (total, SUM_TARGET)
    assert deficit(img) == DEFICIT_TARGET
    print('[%s] DONE: CRC=0x%04X sum=0x%04X (padding bytes used: %d)'
          % (label, stored, total, pi), flush=True)
