
void fn_8544(void)

{
  uint uVar1;
  uint unaff_r13;
  int unaff_r14;
  undefined1 *unaff_r16;
  
  do {
    uVar1 = FUN_ram_00012384();
    if (uVar1 == *(byte *)(unaff_r14 + unaff_r13 + -0xd4)) {
      *unaff_r16 = (char)unaff_r13;
      return;
    }
    unaff_r13 = unaff_r13 + 1 & 0xff;
  } while (unaff_r13 < 0x13);
  *unaff_r16 = 0xff;
  return;
}

