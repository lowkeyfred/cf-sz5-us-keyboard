
void fn_17fec(int param_1)

{
  byte bVar1;
  undefined4 uVar2;
  int unaff_gp;
  
  bVar1 = *(byte *)(unaff_gp + -0xe5);
  if (((bVar1 & 0x20) != 0) || ((bVar1 & 0x10) != 0)) {
    if (param_1 == 0) {
      FUN_ram_0001613c();
      return;
    }
    FUN_ram_000055bc(0x84);
    return;
  }
  if (((byte)((bVar1 >> 2 & 1) + (bVar1 >> 3 & 1)) == '\0') &&
     ((byte)(bVar1 >> 6 & 1) == (char)bVar1 >> 7)) {
    if (param_1 != 0) {
      FUN_ram_000055d4(0x7c);
      uVar2 = 0x12;
      goto LAB_ram_0001805a;
    }
    FUN_ram_00016148(0x12);
  }
  else if (param_1 != 0) {
    uVar2 = 0x7c;
LAB_ram_0001805a:
    FUN_ram_000055d4(uVar2);
    return;
  }
  FUN_ram_00016148(0x7c);
  return;
}

