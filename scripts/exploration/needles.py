#!/usr/bin/env python3
"""Targeted needle search across the handoff binaries."""
import sys, re, os

ROOT = r'C:\Users\frederich\workspaces\CF-SZ5-handoff'
FILES = ['EC\\ec_firmware_encrypted.bin', 'EC\\EcUpdate_SZ5M123_V100L19.exe',
         'EC\\ec_sz5_123_m195072.exe', 'BIOS\\bios.rom', 'BIOS\\bios_image_10_3003.bin',
         'BIOS\\BIOS_SZ5_V300L25.exe']
NEEDLES = [b'@$AMIE', b'AMERICAN MEGATRENDS', b'MATRIX', b'Keyboard', b'KEYBOARD', b'KBD',
           b'JIS', b'ECFW', b'EcUpdate', b'PS2', b'Scancode', b'ScanCode', b'SCANCODE',
           b'CF-SZ5', b'SZ5', b'KBID', b'KeyboardId', b'KeyId', b'keymap', b'KeyMap',
           b'EC_ROM', b'ECROM', b'ec_fw', b'ECFW_', b'0x15', b'Layout']

def main():
    for f in FILES:
        p = os.path.join(ROOT, f)
        if not os.path.exists(p):
            continue
        d = open(p, 'rb').read()
        print('=== %s (%d bytes)' % (f, len(d)))
        for nd in NEEDLES:
            hits = [m.start() for m in re.finditer(re.escape(nd), d)]
            if hits:
                print('  %-18r %3d  %s' % (nd, len(hits), ' '.join('%08x' % h for h in hits[:12])))
        print()

if __name__ == '__main__':
    main()
