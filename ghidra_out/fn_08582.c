
void fn_8582(uint param_1,undefined1 *param_2,uint param_3)

{
  do {
    if (param_1 == *(byte *)(param_3 + 0x293ec)) {
      *param_2 = (char)param_3;
      return;
    }
    param_3 = param_3 + 1 & 0xff;
  } while (param_3 < 0x13);
  *param_2 = 0xff;
  return;
}

