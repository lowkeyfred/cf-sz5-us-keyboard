
void fn_e528(int param_1)

{
  undefined4 uVar1;
  int unaff_gp;
  
  if (((*(byte *)(unaff_gp + -0xe5) & 0x80) == 0) && ((*(byte *)(unaff_gp + -0xe5) & 0x40) == 0)) {
    if (param_1 != 0) {
      FUN_ram_000055bc(0x12);
      uVar1 = 0x4e;
LAB_ram_0000e564:
      FUN_ram_000055bc(uVar1);
      return;
    }
    FUN_ram_0001613c();
    uVar1 = 0x4e;
  }
  else {
    uVar1 = 0x3e;
    if (param_1 != 0) goto LAB_ram_0000e564;
  }
  FUN_ram_0001613c(uVar1);
  return;
}

