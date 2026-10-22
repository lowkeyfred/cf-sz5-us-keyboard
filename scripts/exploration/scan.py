#!/usr/bin/env python3
"""Generic binary triage: magics, strings, entropy map, byte histogram."""
import sys, re, math, os
from collections import Counter

MAGICS = [b'@$AMIE', b'AMIE', b'!AMIE', b'$AMIE', b'MZ', b'_FVH', b'APROM', b'ECFW',
          b'Keyboard', b'KEYBOARD', b'JIS', b'SZ5', b'CF-SZ5']

def entropy(b):
    if not b: return 0.0
    c = Counter(b); n = len(b)
    return -sum((v/n) * math.log2(v/n) for v in c.values())

def ascii_strings(d, minlen=5):
    out = []
    for m in re.finditer(rb'[\x20-\x7e]{%d,}' % minlen, d):
        out.append((m.start(), m.group().decode('latin1')))
    return out

def utf16_strings(d, minlen=4):
    out = []
    pat = re.compile((rb'(?:[\x20-\x7e]\x00){%d,}' % minlen))
    for m in pat.finditer(d):
        s = m.group().decode('utf-16le', 'replace')
        out.append((m.start(), s))
    return out

def main(path, want_strings=True):
    d = open(path, 'rb').read()
    print('== %s  %d bytes  entropy %.3f' % (path, len(d), entropy(d)))
    for mg in MAGICS:
        hits = [m.start() for m in re.finditer(re.escape(mg), d)]
        if hits:
            print('magic %-10r count=%d offsets=%s' % (mg, len(hits), [hex(h) for h in hits[:20]]))
    # entropy map
    print('\n-- entropy map (4K blocks) --')
    line = []
    for i in range(0, len(d), 4096):
        line.append('%06x:%.2f' % (i, entropy(d[i:i+4096])))
        if len(line) == 6:
            print('  ' + '  '.join(line)); line = []
    if line: print('  ' + '  '.join(line))
    # histogram top
    c = Counter(d).most_common(16)
    print('\n-- top bytes --')
    print('  ' + '  '.join('%02x:%d' % (b, n) for b, n in c))
    if want_strings:
        ss = ascii_strings(d)
        print('\n-- ascii strings: %d --' % len(ss))
        for off, s in ss[:400]:
            print('  %08x  %s' % (off, s))
        us = utf16_strings(d)
        print('\n-- utf16 strings: %d --' % len(us))
        for off, s in us[:400]:
            print('  %08x  %s' % (off, s))

if __name__ == '__main__':
    main(sys.argv[1])
