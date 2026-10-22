
void fn_8580(uint param_1,undefined1 *param_2)

{
  uint uVar1;
  
  uVar1 = 0;
  do {
    if (param_1 == *(byte *)(uVar1 + 0x293ec)) {
      *param_2 = (char)uVar1;
      return;
    }
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 0x13);
  *param_2 = 0xff;
  return;
}

