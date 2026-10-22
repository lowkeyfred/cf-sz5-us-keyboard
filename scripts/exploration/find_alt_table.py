# 1) Full hexdump of the data region 0x29300-0x29800.
# 2) Firmware-wide search for windows containing the mystery codes
#    0x70, 0x71, 0x73, 0xF2, 0xF3 together (candidate alternate key table).
import sys

fw = open('ec_firmware.bin', 'rb').read()

print('=== hexdump 0x29300-0x29800 ===')
for base in range(0x29300, 0x29800, 16):
    row = fw[base:base + 16]
    asc = ''.join(chr(b) if 32 <= b < 127 else '.' for b in row)
    print('%06x  %s  %s' % (base, ' '.join('%02x' % b for b in row), asc))

# search: sliding 160-byte window containing at least 4 of the mystery codes
mystery = [0x70, 0x71, 0x73, 0xF2, 0xF3, 0xDD]
print()
print('=== windows (size 160) containing >=4 mystery codes ===')
W = 160
for base in range(0, len(fw) - W):
    win = fw[base:base + W]
    hits = sum(1 for m in mystery if m in win)
    if hits >= 4:
        print('0x%06x: %s' % (base, ' '.join('%02x' % b for b in win)))
