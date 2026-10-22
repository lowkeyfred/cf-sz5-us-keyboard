
void FUN_ram_0000ff9c(undefined4 param_1,uint param_2,int param_3,int param_4)

{
  char cVar1;
  int unaff_gp;
  
  if (*(byte *)(unaff_gp + -0x96) != 0x9f) {
    param_2 = (uint)*(byte *)(unaff_gp + -0x96);
  }
  if (param_3 < 0x13) {
    cVar1 = (&DAT_ram_0002a7b0)[param_3];
    if (param_4 == 0) {
      cVar1 = cVar1 + 'f';
      DAT_ram_008004b6 = (char)param_3 + '\x01';
    }
    else {
      DAT_ram_008004b6 = -1;
    }
    if ((param_3 != 10) && (param_3 != 0xb)) {
      FUN_ram_00007a1c(param_2,cVar1);
    }
  }
  return;
}

