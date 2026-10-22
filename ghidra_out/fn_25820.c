
void FUN_ram_0002576c(undefined1 *param_1,byte *param_2,byte *param_3)

{
  bool bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  
  bVar1 = false;
  bVar2 = *param_2;
  bVar4 = 0xff;
  bVar3 = 0;
  if (bVar2 == 1) {
LAB_ram_000257b6:
    if ((1 << (*param_3 & 0x1f) & 0xdU) == 0) {
      *param_1 = 0;
      bVar3 = 0;
    }
    else {
      *param_1 = 1;
      bVar4 = *param_3;
      if (*param_2 == 1) {
        bVar3 = 1;
      }
      else {
        bVar3 = 0;
      }
    }
    bVar1 = true;
  }
  else {
    if (bVar2 < 2) {
      if (bVar2 == 0) {
        *param_1 = 1;
        bVar1 = true;
        goto LAB_ram_00025800;
      }
    }
    else {
      if (bVar2 == 2) goto LAB_ram_000257b6;
      if (bVar2 == 0xff) {
        *param_1 = 1;
        *param_2 = 0xd;
        *param_3 = 0;
        goto LAB_ram_00025800;
      }
    }
    *param_3 = 0;
    *param_2 = 0;
    *param_1 = 0;
  }
LAB_ram_00025800:
  if (bVar4 == 0) {
    DAT_ram_00f0c42a = DAT_ram_00f0c42a & 0xfe | bVar3;
  }
  else if (bVar4 == 2) {
    DAT_ram_00f0c42e = DAT_ram_00f0c42e & 0xfe | bVar3;
  }
  else if (bVar4 == 3) {
    DAT_ram_00f0c562 = DAT_ram_00f0c562 & 0xfe | bVar3;
  }
  if (bVar1) {
    if ((DAT_ram_00f0c42e & 1) == 0) {
      bVar4 = 0;
    }
    else {
      bVar4 = 4;
    }
    if ((DAT_ram_00f0c562 & 1) == 0) {
      bVar2 = 0;
    }
    else {
      bVar2 = 8;
    }
    *param_2 = bVar2 | (DAT_ram_00f0c42a & 1) != 0 | bVar4;
    *param_3 = 0;
  }
  return;
}

