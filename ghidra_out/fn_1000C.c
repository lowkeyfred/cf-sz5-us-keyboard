
void fn_1000c(int param_1)

{
  byte bVar1;
  int iVar2;
  undefined4 uVar3;
  int unaff_r15;
  int unaff_gp;
  
  bVar1 = *(byte *)(param_1 + 0x29454);
  if ((bVar1 & 0x80) == 0) {
    uRam00800b89 = 0;
    iVar2 = FUN_ram_00027f30();
    *(int *)(unaff_gp + 4) = iVar2;
    if ((unaff_r15 == 0) && ((bRam00800b9d & 4) == 0)) {
      fn_100ac(bVar1,param_1);
    }
    else if (unaff_r15 == 2) {
      fn_100ac(bVar1,param_1);
      *(undefined4 *)(unaff_gp + 8) = 0;
    }
    else if (0x19 < (uint)(iVar2 - *(int *)(unaff_gp + 8))) {
      fn_100ac(bVar1,param_1);
      uVar3 = FUN_ram_00027f30();
      *(undefined4 *)(unaff_gp + 8) = uVar3;
    }
  }
  else {
    uRam00800b8a = 0;
  }
  return;
}

