
undefined4 fn_fc8c(void)

{
  byte bVar1;
  int unaff_gp;
  
  bVar1 = (*(byte *)(unaff_gp + -0xd6) & 2) != 0;
  if (((*(byte *)(unaff_gp + -0xe5) & 0x40) != 0) || ((*(byte *)(unaff_gp + -0xe5) & 0x80) != 0)) {
    bVar1 = bVar1 | 2;
  }
  if ((bVar1 != 0) && (bVar1 != 3)) {
    if (bVar1 == 2) {
      return 0x55;
    }
    return 0x46;
  }
  return 0x23;
}

