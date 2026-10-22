
void fn_3c30(undefined4 param_1,char param_2)

{
  byte bVar1;
  undefined4 uVar2;
  int unaff_r13;
  int unaff_gp;
  
  bVar1 = *(byte *)((*(byte *)(unaff_gp + -0xa1) & 0x1f) + 0x2947c);
  *(byte *)(unaff_r13 + 0x3d) = *(byte *)(unaff_r13 + 0x3d) | 4;
  *(uint *)(unaff_gp + -0x6c) = (uint)bVar1 * 5;
  func_0x00010d7c(0,param_2 + -1);
  *(byte *)(unaff_r13 + 0x27) = *(byte *)(unaff_r13 + 0x27) & 0xbf;
  uVar2 = FUN_ram_00027f30();
  *(undefined4 *)(unaff_gp + 0x30) = uVar2;
  return;
}

