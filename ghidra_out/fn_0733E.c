
void fn_733e(undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5
            ,byte param_6,uint param_7,int param_8)

{
  byte bVar1;
  uint uVar2;
  
  do {
    bVar1 = 0;
    uVar2 = 0;
    do {
      if ((*(byte *)(uVar2 + 0x2975c) & (&stack0x00000010)[param_7]) == 0) {
        bVar1 = bVar1 + 1;
      }
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < 8);
    uVar2 = param_7;
    if (1 < bVar1) {
      while ((int)(uVar2 + 1) < param_3) {
        uVar2 = uVar2 + 1 & 0xff;
        if ((&stack0x00000010)[uVar2] == (&stack0x00000010)[param_7]) {
          *(byte *)(param_8 + 0x27) = param_6 | 0x20;
          return;
        }
      }
    }
    param_7 = param_7 + 1 & 0xff;
  } while ((int)param_7 < param_3);
  return;
}

