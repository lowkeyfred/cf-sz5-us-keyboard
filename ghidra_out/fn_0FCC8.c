
void fn_fcc8(int param_1,int param_2)

{
  undefined1 uVar1;
  undefined4 uVar2;
  byte bVar3;
  int unaff_gp;
  
  uVar1 = (&DAT_ram_000293d0)[(byte)(&DAT_ram_0002931c)[param_2]];
  bVar3 = (*(byte *)(unaff_gp + -0xd6) & 2) != 0;
  if (((*(byte *)(unaff_gp + -0xe5) & 0x80) != 0) || ((*(byte *)(unaff_gp + -0xe5) & 0x40) != 0)) {
    bVar3 = bVar3 | 2;
  }
  if ((bVar3 == 0) || (bVar3 == 3)) {
    if (param_1 == 0) {
      FUN_ram_00016148();
    }
    else {
      FUN_ram_000055d4(uVar1);
    }
  }
  if (bVar3 == 1) {
    if (param_1 == 0) {
      FUN_ram_00016148(0x12);
      FUN_ram_00016148(uVar1);
    }
    else {
      FUN_ram_000055d4(uVar1);
      FUN_ram_000055d4(0x12);
    }
  }
  if (bVar3 == 2) {
    if (param_1 == 0) {
      if ((*(byte *)(unaff_gp + -0xe5) & 0x80) == 0) {
        uVar2 = 0x12;
      }
      else {
        uVar2 = 0x59;
      }
      FUN_ram_000055d4(uVar2);
    }
    else {
      FUN_ram_000055d4(uVar1);
      if ((*(byte *)(unaff_gp + -0xe5) & 0x80) == 0) {
        uVar1 = 0x12;
      }
      else {
        uVar1 = 0x59;
      }
    }
    FUN_ram_00016148(uVar1);
  }
  return;
}

