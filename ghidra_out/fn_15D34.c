
void FUN_ram_00015d34(uint param_1,int param_2)

{
  undefined4 uVar1;
  
  if (param_2 == 0) {
    if (((param_1 & 0x80) == 0) || (param_1 == 0x83)) goto LAB_ram_00015d54;
    uVar1 = 0xe0;
  }
  else {
    if (((param_1 & 0x80) != 0) && (param_1 != 0x83)) {
      FUN_ram_0001809c(0xe0);
    }
    uVar1 = 0xf0;
  }
  FUN_ram_0001809c(uVar1);
LAB_ram_00015d54:
  if (param_1 == 0x83) {
    param_1 = 0x83;
  }
  else {
    param_1 = param_1 & 0x7f;
  }
  FUN_ram_0001809c(param_1);
  return;
}

