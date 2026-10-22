# EC 分析 HANDOFF — Panasonic CF-SZ5P

> **2026-10-20 静态复核更正**：EC 镜像**不是加密**的。`ec_firmware_encrypted.bin` 是
> `[u32][u32 原始大小][LZNT1 块流]` 容器，用 `ntdll!RtlDecompressBuffer` 可完整解出
> **198656 B** 固件（`$AMIEC`，AMI EC / ARC 平台）。ECDH+AES 不是用来解密镜像的。
> 详见 `../analysis/STATIC-ANALYSIS.md`，解码工具 `../analysis/ec_capsule.py`。
> 下文"加密 capsule"的相关表述以此更正为准。

## 设备

- 型号：CF-SZ5P（DMI `CFSZ5-3`，序列 `CF-SZ5PDYVS`）
- BIOS：`V3.00L24`
- EC：`1.0`（DMI `ec_firmware_release`）
- 系统：CachyOS / KDE Wayland
- 键盘：US 键盘总成（原机 JIS），EC/BIOS 仍按 JIS 矩阵解释
- 症状：`\` 出 `=`；Home 出 `=`；Del 为 `NoSymbol`；PrtSc 出 Ins；Pause 出 Del；外接键盘正常

## 已确认

- BIOS region 里没有 KeyboardId；`MiscTable` 是 SMBIOS 结构，`MiscTableBackup` 是 asset/serial 备份
- EC RAM dump（0x00–0xFF）主要是电池/EC 状态；`CF-VZSU0M` 是电池型号；没有 KeyboardId
- 官方 EC 更新包 V1.00L19 支持 CF-SZ5A/B/P/Q，但只提供 JIS EC 表，不能换语言
- ~~`EcUpdate` 使用 ECDH P-521 + AES/BCrypt；EC 镜像是 `@$AMIE` 加密 capsule，静态无法解密/修改~~
  → 已更正：镜像为 LZNT1 压缩（非加密）；BCrypt 的 ECDH/AES 用途未定，更可能是与 EC 的握手或
  传输入口加密，而不是解密本地镜像
- 没有公开的 US 版 EC 包

## 目标

1. 在 Windows 上捕获 `EcUpdate` 本地解密/解压后的 EC 固件（如果存在）
2. 记录 `DeviceIoControl` 的 EC 更新协议/输入输出
3. 只抓取，不写 EC、不刷修改后的固件
4. 如果捕获不到明文，下一步是硬件读 EC flash/JTAG，或 Panasonic 服务

## 文件

- `ec_sz5_123_m195072.exe`：官方 EC 更新安装包（InstallShield）
- `EcUpdate_SZ5M123_V100L19.exe`：解出的实际更新器（PE32，32 位）
- `ec_firmware_encrypted.bin`：从更新器资源提取的加密 EC 镜像（`@$AMIE`）
- `EC_Update_Manual_ENG.pdf` / `EC_Update_Manual_JPN.pdf`
- `frida-ec-dump.js`：Frida 捕获脚本
- `ec-ram-hexdump.txt`：本机 EC RAM 只读 dump
- `sha256sums.txt`

## Windows 准备

- 64 位 Windows 10/11，管理员权限
- 安装 Python 3，然后：

```powershell
py -3 -m pip install --upgrade frida-tools
```

- 或者安装 x32dbg（因为 `EcUpdate` 是 32 位 PE）
- 把整个 `ec-handoff` 文件夹复制到 `C:\ec-handoff`
- 先运行 `ec_sz5_123_m195072.exe` 安装 Panasonic EC 驱动/工具；如果安装完自动启动更新，先关掉
  - 这个阶段不要让它完成 EC 更新，先做捕获
- 建好输出目录：

```powershell
mkdir C:\ec-dump
```

## 方案 A：Frida 捕获（推荐）

管理员 PowerShell：

```powershell
cd C:\ec-handoff
frida -f "C:\ec-handoff\EcUpdate_SZ5M123_V100L19.exe" -l "C:\ec-handoff\frida-ec-dump.js"
```

脚本会 hook：

- `bcrypt.dll!BCryptEncrypt`（重点看输入，可能是明文固件）
- `bcrypt.dll!BCryptDecrypt`（重点看输出，可能是明文）
- `ntdll.dll!RtlDecompressBuffer`（重点看输出）
- `kernel32.dll!DeviceIoControl`（EC 通信协议/输入输出）

在 GUI 里点击“更新/执行”，让流程走到 EC 通信。捕获文件会写到：

```text
C:\ec-dump\*.bin
```

**在第一次 `DeviceIoControl` 真正写 EC 前尽量暂停/终止进程**，避免真的改 EC；如果已经写入一次也不用重复。把整个 `C:\ec-dump` 打包发回。

## 方案 B：x32dbg 备选

如果 Frida 在 32 位/WOW64 下有问题，用 x32dbg：

1. 打开 `EcUpdate_SZ5M123_V100L19.exe`
2. 设置断点：
   - `bcrypt.BCryptEncrypt`
   - `bcrypt.BCryptDecrypt`
   - `ntdll.RtlDecompressBuffer`
   - `kernel32.DeviceIoControl`
3. 命中后在函数返回处 dump 参数缓冲区
4. 重点看：
   - `BCryptEncrypt` 的 **输入**
   - `BCryptDecrypt` 的 **输出**
   - `RtlDecompressBuffer` 的 **输出**
   - `DeviceIoControl` 的 in/out buffer
5. 保存为 `.bin`，和日志一起发回

## 判读

- 如果捕获到明文/解压后的 EC 固件：发回，我们找键盘矩阵和 KeyboardId
- 如果只有加密 capsule：说明本地不解密，必须硬件读 EC
- 官方 EC 更新 V1.00L19 可以在捕获之后单独跑一次做基线；它不会把 JIS 改成 US

## 不要做

- 不要修改 `EcUpdate`/EC 镜像后刷写
- 不要写 EC RAM
- 不要运行来源不明的 EC 固件
- 不要在 VM/Wine 里做 EC 更新（EC 驱动不完整）
- 不要在没备份的情况下写 EC flash

## 返回内容

- `C:\ec-dump` 压缩包
- `EcUpdate` 版本/日志
- EC 更新前后的 EC 版本（如果跑了）
- 任何错误码（`MF1308`、`bEcId` 等）

## 后续

- 有明文：分析键盘矩阵，评估能否在 EC 里 remap；仍需解决签名/加密写入
- 无明文：EC flash 硬件读取（需要 EC 芯片型号、SPI/JTAG 工具）或 Panasonic 服务
- 最后手段：外接键盘，或换回 JIS 键盘总成

## 本机 EC RAM dump

见 `ec-ram-hexdump.txt`。其中 `CF-VZSU0M` 是电池型号，`LION` 是电池类型，不是键盘信息。
