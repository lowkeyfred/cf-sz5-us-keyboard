# Dump T1-T4 (128B tables at 0x29514 + 0x80*i) decoded to set-2 semantics.
# bit7 set => E0 + (v & 0x7F) direct. Also pairwise-compare to find layout variants.
import sys

fw = open('ec_firmware.bin', 'rb').read()

def dec(v):
    if v == 0xFF:
        return '....'
    if v < 0x80:
        return '%02x  ' % v
    return 'E0%02x' % (v & 0x7F)

bases = [0x29514 + 0x80 * i for i in range(4)]
tabs = [fw[b:b + 0x80] for b in bases]

for i, b in enumerate(bases):
    print('=== T%d @ 0x%X ===' % (i + 1, b))
    for r in range(8):
        print(' '.join('%3d:%s' % (r * 16 + c, dec(tabs[i][r * 16 + c])) for c in range(16)))

print()
for a in range(4):
    for b_ in range(a + 1, 4):
        diffs = [(i, tabs[a][i], tabs[b_][i]) for i in range(0x80) if tabs[a][i] != tabs[b_][i]]
        print('T%d vs T%d: %d diffs' % (a + 1, b_ + 1, len(diffs)))
        if 0 < len(diffs) <= 40:
            for i, x, y in diffs:
                print('   idx %3d (0x%02X): %s -> %s' % (i, i, dec(x), dec(y)))

# How many times does 0x55 appear in each table?
print()
for i in range(4):
    cnt = tabs[i].count(0x55)
    idxs = [j for j in range(0x80) if tabs[i][j] == 0x55]
    print('T%d: 0x55 appears %d times at %s' % (i + 1, cnt, [hex(j) for j in idxs]))

# Codes the user's broken keys produce: 0x55(x3), 0x70, 0x73, 0xDD, 0xF2, 0xF3
print()
for code in (0x70, 0x73, 0xDD, 0xF2, 0xF3):
    for i in range(4):
        idxs = [j for j in range(0x80) if tabs[i][j] == code]
        if idxs:
            print('code 0x%02X (%s) in T%d at idx %s' % (code, dec(code), i + 1, [hex(j) for j in idxs]))
