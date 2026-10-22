# Diff SZ5 vs SZ6 EC firmwares, allowing for global offset shifts.
# Report aligned diff regions and any semantics-bearing differences.
import sys

a = open('ec_firmware.bin', 'rb').read()
b = open('sz6/ec_sz6_firmware.bin', 'rb').read()
print('sizes: sz5=%d (0x%X)  sz6=%d (0x%X)' % (len(a), len(a), len(b), len(b)))

# quick byte diff with no alignment
n = min(len(a), len(b))
raw_diffs = sum(1 for i in range(n) if a[i] != b[i])
print('raw byte diffs (no alignment): %d / %d' % (raw_diffs, n))

# try aligning b against a at various shifts; score by match over code region
best = None
for shift in range(-0x2000, 0x2001, 4):
    # b index j corresponds to a index j + shift
    lo = max(0, -shift)
    hi = min(len(b), len(a) - shift)
    if hi - lo < 100000:
        continue
    m = sum(1 for j in range(lo, hi, 7) if a[j + shift] == b[j])
    if best is None or m > best[0]:
        best = (m, shift)
print('best alignment: shift=%+d (b_index + shift = a_index), sampled match=%d' % (best[1], best[0]))
