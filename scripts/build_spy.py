#!/usr/bin/env python3
"""Build EcUpdate_spy*.exe: probe capsule + codecave logging the raw MF1305
SMM response packet (0x16 bytes at [ebp-0x18]) to ec_spy.log in the CWD.

Hook: FUN_004180f0 (MF1305 exchanger), after `call FUN_00414e50` @ VA 0x418155.
Original bytes @ 0x41815a: 8b f0 85 f6 75 48 ... (mov esi,eax; test esi,esi; jne)
Patch: e9 -> codecave @ VA 0x43B88 (.text tail padding, file 0x32F88, 0x78 zeros).
Cave emulates mov esi,eax / test esi,esi, jne-taken -> 0x4181a8, else jmp back
to 0x41815e so the ORIGINAL jne re-runs with the cave's flags (ZF set).

Response packet layout (from FUN_004180f0 post-call reads):
  [0x00]       status (0 = ok)
  [0x08..0x0D] 6 bytes -> DAT_004488a0 (EC identity)
  [0x0E..0x0F] word  -> local_c  (bit0 = tag bad, bit1 = Validate==0)
  [0x10..0x15] 6 bytes -> DAT_004488a6 (uploaded-image identity)

Safety: original INI (SameVersionPolicy=2). PAD/ID capsules fail validation ->
214, never flashes. PRISTINE capsule passes validation, then the same-version
gate refuses ("no need to update") -> never flashes either.
"""
import struct
import sys
import os
import importlib.util

import sz5env


def _load(name):
    spec = importlib.util.spec_from_file_location(
        name, os.path.join(sz5env.ROOT, name + '.py'))
    m = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(m)
    return m


bp = _load('build_probe')

CAVE_VA = 0x43B88          # .text tail padding (file 0x32F88, 0x78 zero bytes)
HOOK_VA = 0x41815A
JNE_TAKEN_TARGET = 0x4181A8
JMP_BACK_TARGET = 0x41815E  # re-run original jne with cave's flags

IAT_CREATEFILEW = 0x443B58
IAT_WRITEFILE = 0x443B98
IAT_CLOSEHANDLE = 0x443B64


def cave_bytes():
    name = 'ec_spy.log'.encode('utf-16-le') + b'\x00\x00'

    def assemble(name_va):
        b = bytearray()
        b += b'\x60'                       # pushad
        b += b'\x83\xec\x10'               # sub esp,0x10 (scratch: [esp]=written)
        b += b'\x6a\x00'                   # push 0                  hTemplateFile
        b += b'\x68\x80\x00\x00\x00'       # push 0x80               FILE_ATTRIBUTE_NORMAL
        b += b'\x6a\x04'                   # push 4                  OPEN_ALWAYS
        b += b'\x6a\x00'                   # push 0                  lpSecurityAttributes
        b += b'\x6a\x01'                   # push 1                  FILE_SHARE_READ
        b += b'\x6a\x04'                   # push 4                  FILE_APPEND_DATA
        b += b'\x68' + struct.pack('<I', name_va)
        b += b'\xff\x15' + struct.pack('<I', IAT_CREATEFILEW)
        b += b'\x83\xf8\xff'               # cmp eax,-1
        je_pos = len(b)
        b += b'\x74\x00'                   # je done (patched below)
        b += b'\x89\xc3'                   # mov ebx,eax
        b += b'\x8d\x44\x24\x00'           # lea eax,[esp]  (&written scratch)
        b += b'\x6a\x00'                   # push 0                  lpOverlapped
        b += b'\x50'                       # push eax                &written
        b += b'\x6a\x16'                   # push 0x16               count
        b += b'\x8d\x4d\xe8'               # lea ecx,[ebp-0x18]      response packet
        b += b'\x51'                       # push ecx
        b += b'\x53'                       # push ebx
        b += b'\xff\x15' + struct.pack('<I', IAT_WRITEFILE)
        b += b'\x53'                       # push ebx
        b += b'\xff\x15' + struct.pack('<I', IAT_CLOSEHANDLE)
        done_off = len(b)
        b[je_pos + 1] = done_off - (je_pos + 2)
        b += b'\x83\xc4\x10'               # add esp,0x10
        b += b'\x61'                       # popad
        b += b'\x8b\xf0'                   # mov esi,eax
        b += b'\x85\xf6'                   # test esi,esi
        jne_off = len(b)
        b += b'\x0f\x85' + struct.pack('<i', JNE_TAKEN_TARGET - (CAVE_VA + jne_off + 6))
        jmp_off = len(b)
        b += b'\xe9' + struct.pack('<i', JMP_BACK_TARGET - (CAVE_VA + jmp_off + 5))
        b += name
        return b

    # two passes: code length is name_va-independent (imm32 push is fixed size)
    b = assemble(CAVE_VA + 0x60)
    name_va = CAVE_VA + len(b) - len(name)
    b = assemble(name_va)
    assert len(b) <= 0x78, hex(len(b))
    return bytes(b).ljust(0x78, b'\x00')


def main(image_path, out_path):
    # 1. base exe via probe builder (original INI, capsule at 0x480A0, cert cut)
    bp.build(image_path, out_path)
    exe = bytearray(open(out_path, 'rb').read())

    # 2. sanity: hook site bytes + cave area must be pristine
    assert exe[0x1755A:0x1755F] == bytes.fromhex('8bf085f675'), exe[0x1755A:0x1755F].hex()
    assert set(exe[0x32F88:0x33000]) == {0}

    # 3. write cave
    exe[0x32F88:0x33000] = cave_bytes()

    # 4. hook: e9 rel32 -> cave
    rel = CAVE_VA - (HOOK_VA + 5)
    exe[0x1755A:0x1755F] = b'\xe9' + struct.pack('<i', rel)

    # 5. recalc PE checksum (probe builder already zeroed it + cut cert)
    e_lfanew = struct.unpack_from('<I', exe, 0x3c)[0]
    opt = e_lfanew + 24
    struct.pack_into('<I', exe, opt + 64, 0)
    cs = bp.pe_checksum(bytes(exe), opt + 64)
    struct.pack_into('<I', exe, opt + 64, cs)
    open(out_path, 'wb').write(bytes(exe))
    print('spy cave %d bytes, checksum 0x%08X -> %s' % (len(cave_bytes()), cs, out_path))


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
