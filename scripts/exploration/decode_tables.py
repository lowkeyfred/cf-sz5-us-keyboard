# Decode the four 128-byte matrix tables in the SZ5 EC firmware
import sys

fw = open('ec_firmware.bin', 'rb').read()

E0TAB = fw[0x29400:0x29420]  # second-byte table for E0-prefixed codes

def dec(v):
    if v == 0xFF:
        return '..'
    if v < 0x80:
        return '%02x' % v
    if v < 0xA0:
        return 'E0%02x' % E0TAB[v - 0x80]
    return 'AC%02x' % v

names = ['T1', 'T2', 'T3', 'T4']
tabs = {}
for t in range(4):
    base = 0x29520 + 0x80 * t
    tabs[names[t]] = fw[base:base + 0x80]

for t in range(4):
    print('=== %s @ 0x%X ===' % (names[t], 0x29520 + 0x80 * t))
    tb = tabs[names[t]]
    for r in range(8):
        print(' '.join(dec(tb[r * 16 + c]) for c in range(16)))

print()
print('=== pairwise diffs (index: T1 -> Tn) ===')
for t in range(1, 4):
    print('--- T1 vs %s ---' % names[t])
    diffs = []
    for i in range(0x80):
        if tabs['T1'][i] != tabs[names[t]][i]:
            diffs.append('%3d: %02x -> %02x' % (i, tabs['T1'][i], tabs[names[t]][i]))
    print('\n'.join(diffs) if diffs else '(identical)')
