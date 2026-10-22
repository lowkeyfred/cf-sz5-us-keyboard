
void fn_15224(int param_1)

{
  int unaff_gp;
  
  if (((*(byte *)(unaff_gp + -0xe5) & 0x80) == 0) && ((*(byte *)(unaff_gp + -0xe5) & 0x40) == 0)) {
    if (param_1 != 0) {
      FUN_ram_000055d4(0x4a);
      return;
    }
  }
  else {
    if (param_1 != 0) {
      FUN_ram_000055d4(0x4a);
      FUN_ram_00016160();
      FUN_ram_0001617c();
      return;
    }
    FUN_ram_000055f4();
    FUN_ram_00005610();
  }
  FUN_ram_00016148(0x4a);
  return;
}

