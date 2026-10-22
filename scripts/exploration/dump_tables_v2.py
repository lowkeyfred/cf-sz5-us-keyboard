# Corrected-base dump of the four key tables, per code-verified bases:
#   A=0x2949C (selector default), B=0x2951C (sel 2), C=0x2959C (sel 3), D=0x2961C (sel 4)
# Evidence: 0x79B4(+8), 0x79C4(+136), 0x79D6(0x29714-248), 0x79E4(-120) all vs 0x29514.
fw = open('ec_firmware.bin', 'rb').read()

def dec(v):
    if v == 0xFF:
        return '....'
    if v < 0x80:
        return '%02x ' % v
    return 'E0%02x' % (v & 0x7F)

names = ['A', 'B', 'C', 'D']
bases = [0x2949C, 0x2951C, 0x2959C, 0x2961C]
tabs = {n: fw[b:b + 0x80] for n, b in zip(names, bases)}

for n, b in zip(names, bases):
    print('=== %s @ 0x%X ===' % (n, b))
    for r in range(8):
        print(' '.join('%3d:%s' % (r * 16 + c, dec(tabs[n][r * 16 + c])) for c in range(16)))

print()
for code in (0x55, 0x0D, 0x70, 0x71, 0x73, 0xDD, 0xF2, 0xF3, 0xB8, 0x5D):
    row = []
    for n in names:
        idxs = [i for i in range(0x80) if tabs[n][i] == code]
        row.append('%s:%s' % (n, ','.join('%d' % i for i in idxs) if idxs else '-'))
    print('code 0x%02X:  %s' % (code, '  '.join(row)))

print()
print('=== pairwise diffs vs A (index: A -> X) ===')
for n in names[1:]:
    diffs = [(i, tabs['A'][i], tabs[n][i]) for i in range(0x80) if tabs['A'][i] != tabs[n][i]]
    print('A vs %s: %d diffs' % (n, len(diffs)))
    print('   ' + '  '.join('%d:%s>%s' % (i, dec(a), dec(b)) for i, a, b in diffs))
