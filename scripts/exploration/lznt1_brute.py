#!/usr/bin/env python3
"""Brute-force LZNT1 phrase-split variants against a chunk; report self-consistent parses."""
import sys, struct, itertools

def parse_chunk(chunk, order, disp_bits, disp_high, len_off, verbose=False):
    out = bytearray(); i = 0; ntok = 0; nmatch = 0
    while i < len(chunk):
        flags = chunk[i]; i += 1
        for b in range(8):
            bit = b if order == 'lsb' else 7 - b
            if i >= len(chunk):
                break
            if not (flags >> bit) & 1:
                out.append(chunk[i]); i += 1
            else:
                if i + 1 > len(chunk): return None, 'trunc'
                phrase = chunk[i] | (chunk[i+1] << 8); i += 2
                pos = len(out)
                if callable(disp_bits):
                    db = disp_bits(pos)
                else:
                    db = disp_bits
                db = min(db, 16)
                lb = 16 - db
                if disp_high:
                    disp = (phrase >> lb) + 1
                    length = (phrase & ((1 << lb) - 1)) + len_off
                else:
                    disp = (phrase & ((1 << db) - 1)) + 1
                    length = (phrase >> db) + len_off
                nmatch += 1
                if disp > pos:
                    return None, 'disp>pos pos=0x%x phrase=%04x db=%d' % (pos, phrase, db)
                if len(out) + length > 0x10000:
                    return None, 'too long'
                src = len(out) - disp
                for _ in range(length):
                    out.append(out[src]); src += 1
                ntok += 1
            if i > len(chunk):
                return None, 'overrun'
        if len(out) > 0x4000:
            return None, 'out>16k'
    return out, 'ok'

def variants():
    for order in ('lsb', 'msb'):
        for db in [4, 5, 6, 7, 8, 9, 10, 11, 12]:
            for dh in (False, True):
                for lo in (2, 3, 4):
                    yield (order, db, dh, lo)
        # position dependent
        for dh in (False, True):
            for lo in (2, 3, 4):
                yield (order, lambda p: max(4, p.bit_length()), dh, lo)

def main(path, chunkidx=0):
    d = open(path, 'rb').read()
    u1, usize = struct.unpack_from('<II', d, 0)
    # locate chunk
    p = 8; idx = 0
    while p + 2 <= len(d):
        hdr = struct.unpack_from('<H', d, p)[0]
        csize = (hdr & 0x0FFF) + 1
        if idx == chunkidx:
            chunk = d[p+2:p+2+csize]
            break
        p += 2 + csize; idx += 1
    print('chunk %d size %d u1=0x%x usize=%d' % (idx, csize, u1, usize))
    print('first 32 bytes:', chunk[:32].hex(' '))
    ok = []
    for v in variants():
        order, db, dh, lo = v
        out, why = parse_chunk(chunk, order, db, dh, lo)
        if out is not None:
            ok.append((v, len(out), bytes(out[:48])))
    print('self-consistent parses:', len(ok))
    for v, n, head in ok[:20]:
        print('  order=%s db=%s dh=%s lo=%d -> out=%d head=%s' % (
            v[0], 'pos' if callable(v[1]) else v[1], v[2], v[3], n, head.hex(' ')))

if __name__ == '__main__':
    main(sys.argv[1], int(sys.argv[2]) if len(sys.argv) > 2 else 0)
