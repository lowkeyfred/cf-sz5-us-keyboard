
undefined4 FUN_ram_00015d84(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined1 *puVar2;
  undefined4 uVar3;
  uint uVar4;
  int unaff_gp;
  
  uVar3 = 0;
  if ((*(int *)(unaff_gp + -0x54) == 1) &&
     (iVar1 = FUN_ram_00027f2c(), iVar1 != *(int *)(unaff_gp + -0x50))) {
    FUN_ram_0002797c(*(undefined4 *)(unaff_gp + 0x3c),0,0xffffffff,0);
  }
  iVar1 = FUN_ram_0000656c(param_3);
  if (iVar1 != 0) {
    uVar4 = 0;
    if (0 < param_2) {
      do {
        puVar2 = (undefined1 *)(param_1 + uVar4 * 2);
        FUN_ram_00015d34(*puVar2,puVar2[1]);
        uVar4 = uVar4 + 1 & 0xff;
      } while ((int)uVar4 < param_2);
    }
    uVar3 = 1;
  }
  if ((*(int *)(unaff_gp + -0x54) == 1) &&
     (iVar1 = FUN_ram_00027f2c(), *(int *)(unaff_gp + -0x50) != iVar1)) {
    FUN_ram_00027b80(*(undefined4 *)(unaff_gp + 0x3c),0,0,0);
  }
  return uVar3;
}

