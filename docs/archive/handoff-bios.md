# BIOS ANALYSIS HANDOFF — Panasonic CF-SZ5P

## 设备

- 型号：CF-SZ5P（DMI `CFSZ5-3`，序列 `CF-SZ5PDYVS`）
- BIOS：`V3.00L24`
- EC：`1.0`
- 系统：CachyOS / KDE Wayland
- 键盘：US 键盘总成（原 JIS），EC/BIOS 仍按 JIS 矩阵解释
- 症状：`\` 出 `=`；Home 出 `=`；Del 为 `NoSymbol`；PrtSc 出 Ins；Pause 出 Del

## 本目录文件

- `bios.rom`：本机完整 16 MB SPI dump（README 注意：包含 ME/序列号）
- `BIOS_SZ5_V300L25.exe`：Panasonic 官方 BIOS 更新程序 V3.00L25（CF-SZ5 分支）
- `bios_image_10_3003.bin`：从官方更新程序内层 `BiosUpdate_R22-5370.exe` 提取的 BIOS 镜像资源
- `misctable.asm`：`MiscTable` 模块反汇编（PE32+，x86-64）
- `parser-main.log`：`uefi-firmware-parser` 展开主 FV 的日志

## 已确认的结论

- `bios.rom` 是 16 MB：Descriptor + ME + GbE + 8 MB BIOS region；ME region 锁定
- BIOS region 中：
  - `0x840000` / `0x880000`：两个 NVAR 变量存储
  - `0x8c0000`：主 FV（`0x4e0000`）
  - `0xda0000` / `0xe00000`：其他 FV
- NVAR：
  - `MiscTableBackup`：机器 ID/序列号/asset 数据，不是键盘表
  - `MiscExtBlockBackup`：指针/asset 表，不是键盘表
  - 没有 `KeyboardId`，没有 `15 0e` / `15 00 0e 00` 形式的键盘表项
- 主 FV 模块：
  - `MiscTable` / `MiscTableSmm`：SMBIOS 结构处理（`0x15` 是 Built-in Pointing Device）
  - `EcPs2Kbd`：PS/2 键盘控制器驱动
  - `EC` / `EcUpdate`：EC 版本/更新驱动，没有键盘矩阵表
- **BIOS 里没有 KeyboardId 或 JIS/US 矩阵表**；键盘映射更可能在 EC 固件
- 官方 BIOS updater 有签名/BIOS Guard；BIOS region 有 SMM 保护；修改过的镜像会被拒绝
- 没有可安全修改的 BIOS offset；不要刷改过的 BIOS

## Windows 上的用途

### 只做官方 BIOS 更新（可选）

如果只是想更新官方 BIOS：

1. 正常 Windows 10/11，管理员
2. 接 AC、保证电池
3. 运行 `BIOS_SZ5_V300L25.exe`
4. 不要断电；按提示重启

注意：官方 BIOS 更新**不会**把 JIS 键盘改成 US；不要指望它解决键盘映射。

### 分析用

- 保留 `bios.rom` 作为本机原始镜像；不要覆盖
- 可用 UEFITool/UEFIExtract 打开 `bios.rom` 复核 FV/模块
- `bios_image_10_3003.bin` 是官方更新器里的镜像，不是完整 SPI
- 不要写回修改过的 BIOS；没有可靠目标，且会被 BIOS Guard/SMM 保护拦截

## 相关 EC

EC 的分析、EC 更新包、Frida 捕获脚本在 `EC/HANDOFF.md` 和 `EC/` 目录。键盘矩阵优先查 EC。

## 注意

- `bios.rom` 包含本机 ME region、序列号、DMI；只用于本机分析，不要公开上传
- 不要在没有完整备份和硬件恢复方案的情况下写 SPI
- 不要运行来源不明的 BIOS
