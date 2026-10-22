
void fn_fff4(int param_1,undefined4 param_2,int param_3)

{
  byte bVar1;
  int iVar2;
  undefined4 uVar3;
  int unaff_gp;
  
  bVar1 = *(byte *)(param_1 + 0x29454);
  if ((bVar1 & 0x80) == 0) {
    uRam00800b89 = 0;
    iVar2 = FUN_ram_00027f30();
    *(int *)(unaff_gp + 4) = iVar2;
    if ((param_3 == 0) && ((bRam00800b9d & 4) == 0)) {
      func_0x000100ac(bVar1,param_1,0);
    }
    else if (param_3 == 2) {
      func_0x000100ac(bVar1,param_1,2);
      *(undefined4 *)(unaff_gp + 8) = 0;
    }
    else if (0x19 < (uint)(iVar2 - *(int *)(unaff_gp + 8))) {
      func_0x000100ac(bVar1,param_1,param_3);
      uVar3 = FUN_ram_00027f30();
      *(undefined4 *)(unaff_gp + 8) = uVar3;
    }
  }
  else {
    uRam00800b8a = 0;
  }
  return;
}

