
void fn_100ac(undefined4 param_1,int param_2,int param_3)

{
  int iVar1;
  byte bVar2;
  byte bVar3;
  char cVar4;
  int unaff_gp;
  char cStack_18;
  undefined1 uStack_17;
  
  bVar2 = bRam00800b9d & 4;
  if ((bRam00800b9d & 4) != 0) {
    iVar1 = param_2 * 2;
    cVar4 = *(char *)(iVar1 + 0x800ba1);
    *(char *)(iVar1 + 0x800ba1) = cVar4 + -1;
    if (cVar4 != '\0') {
      return;
    }
    *(undefined1 *)(iVar1 + 0x800ba1) = *(undefined1 *)(iVar1 + 0x800ba0);
  }
  bVar3 = *(byte *)(param_2 + 0x29764);
  cVar4 = *(char *)(param_2 + 0x29468);
  switch(param_2) {
  case 2:
    param_2 = 2;
    if (*(char *)(unaff_gp + -0x93) != '\0') {
      bVar3 = 0x17;
      cVar4 = 'M';
    }
  }
  if (param_3 == 0) {
    if (bVar2 == 0) {
      bVar2 = bVar3 & 1;
    }
    else {
      bVar2 = bVar3 & 4;
    }
    if (bVar2 == 0) {
      return;
    }
  }
  if (((param_3 != 2) || ((bVar3 & 2) != 0)) &&
     ((((*(ushort *)(unaff_gp + 0x5e) & 0x91) != 0x91 &&
       ((*(ushort *)(unaff_gp + 0x5e) & 0x8011) != 0x8011)) ||
      (((cVar4 != -0x5f && (cVar4 != -0x5d)) && (cVar4 != -0x4e)))))) {
    if (((cVar4 == 'M') && (param_3 == 0)) && ((*(byte *)(unaff_gp + -0xb6) & 2) == 0)) {
      FUN_ram_00016148(0x1f);
      FUN_ram_0001964c(unaff_gp + -0xb6,2,1);
    }
    if ((((cVar4 != -0x5f) && (cVar4 != -0x4e)) || ((*(byte *)(unaff_gp + -0xb2) & 1) != 0)) &&
       ((bVar3 & 0x10) != 0)) {
      uStack_17 = (undefined1)param_3;
      cStack_18 = cVar4;
      FUN_ram_00015d84(&cStack_18,1,0);
    }
    if ((bVar3 & 0x20) != 0) {
      FUN_ram_0000ff9c(0,DAT_ram_008004cf,param_2,param_3);
    }
    if ((cVar4 != 'M') && ((*(byte *)(unaff_gp + -0xb6) & 2) == 2)) {
      FUN_ram_000055d4(0x1f);
      FUN_ram_00008880(unaff_gp + -0xb6,2,1);
    }
  }
  return;
}

