
void FUN_ram_00024c80(uint param_1)

{
  DAT_ram_00f0c486 = DAT_ram_00f0c486 & 0xfe | (param_1 & 1) != 0;
  DAT_ram_00f0c4a6 = DAT_ram_00f0c4a6 & 0xfe | (param_1 & 2) != 0;
  return;
}

