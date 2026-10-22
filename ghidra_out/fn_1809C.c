
void FUN_ram_0001809c(uint param_1)

{
  int iVar1;
  int unaff_gp;
  
  if ((((*(byte *)(unaff_gp + -0xe6) & 0x40) == 0) && (*(char *)(unaff_gp + -0xb7) == '\x01')) ||
     (((*(byte *)(unaff_gp + -0xe6) & 0x40) == 0x40 && (*(char *)(unaff_gp + -0xb7) == '\x02')))) {
    if (param_1 == 0xf0) {
      *(byte *)(unaff_gp + -0xe4) = *(byte *)(unaff_gp + -0xe4) | 0x80;
      return;
    }
    if ((int)param_1 < 0x85) {
      param_1 = FUN_ram_00012384(param_1);
      if ((*(byte *)(unaff_gp + -0xe4) & 0x80) != 0) {
        *(byte *)(unaff_gp + -0xe4) = *(byte *)(unaff_gp + -0xe4) & 0x7f;
        param_1 = param_1 & 0xff | 0x80;
      }
    }
  }
  iVar1 = FUN_ram_00025988(*(undefined4 *)(unaff_gp + 0x34));
  if (((iVar1 != 0x10) && ((*(ushort *)(unaff_gp + 0x5e) & 0x281) != 0x281)) &&
     ((*(ushort *)(unaff_gp + 0x5e) & 0x8201) != 0x8201)) {
    FUN_ram_00018064(param_1);
    return;
  }
  return;
}

