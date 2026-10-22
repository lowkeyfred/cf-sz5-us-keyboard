
uint FUN_ram_000121f8(undefined4 param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int unaff_gp;
  
  iVar1 = FUN_ram_0000a000();
  if ((iVar1 == 0) || (*(char *)(iVar1 + 0x6d) != 'p')) {
    uVar2 = 0xffff;
  }
  else {
    uVar2 = (uint)*(ushort *)(iVar1 + 0x18);
    if ((*(uint *)(iVar1 + 0x68) & 0x20) == 0) {
      iVar3 = FUN_ram_000114e0(param_1);
      if (iVar3 == 0) {
        uVar4 = ((uint)*(ushort *)(iVar1 + 0x1a) * 99) / 100;
        if (uVar4 < uVar2) {
          uVar2 = uVar4;
        }
      }
      else {
        uVar4 = ((uint)*(ushort *)(iVar1 + 0x1a) * 0x4f) / 100;
        if (uVar4 < uVar2) {
          uVar2 = uVar4;
        }
      }
    }
    else if (*(ushort *)(iVar1 + 0x1a) < uVar2) {
      uVar2 = (uint)*(ushort *)(iVar1 + 0x1a);
    }
    if (((((DAT_ram_00800409 & 0x10) != 0) && (*(char *)(unaff_gp + -0xf9) == '\x01')) &&
        ((DAT_ram_00800408 & 1) != 0)) &&
       (uVar4 = ((uint)*(ushort *)(iVar1 + 0x30) * 0x16) / 1000, uVar2 < uVar4)) {
      uVar2 = uVar4;
    }
    uVar2 = (*(ushort *)(iVar1 + 0x32) * uVar2) / 10000 & 0xffff;
  }
  return uVar2;
}

