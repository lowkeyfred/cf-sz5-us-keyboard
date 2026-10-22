# CF-SZ5P Handoff — EC / BIOS

本目录包含 Panasonic CF-SZ5P 的 EC 与 BIOS 分析交接。

## 先读

- `BIOS/BIOS-HANDOFF.md`
- `EC/HANDOFF.md`

## 结论摘要

- BIOS 里没有 KeyboardId / JIS-US 矩阵表；`MiscTableBackup` 等是 asset/serial
- 键盘矩阵更可能在 EC 固件
- 官方 EC 更新包 V1.00L19 支持 CF-SZ5P，但只提供 JIS 表，不能换语言
- EC 镜像**不是加密**的：`[u32][u32 大小][LZNT1]` 容器，可完整解出 198656 B 固件（`$AMIEC`，AMI EC / ARC）
- EC 更新器仍有 ECDH P-521 + AES/BCrypt，但用途不是解密镜像（更可能是与 EC 的握手/传输加密）
- 固件内只有一套 8×16 矩阵表（128 项），没有 US 表 → 换语言必须改固件，不是改选项
- **改表链路已打通**：`analysis/ec_patch.py` 做 解码→改字节→重打包，重打包结果与原 capsule **逐字节一致**
- 注意：`0x291FC` 那张 128 项表是**扫描/引脚映射**（值为 0x4000–0x55FF），不是键码表；键码映射仍待反汇编定位
- 固件是 **ARC（ARCompact）**；`analysis/tools/radare2-6.2.4-w64` 已带 ARC 反汇编插件
- 下一步：用 radare2 做函数级分析，定位"矩阵位→键码"的表/代码；动态侧验证 EC 是否校验镜像/传输是否加密
- 详见 `analysis/STATIC-ANALYSIS.md`，解码工具 `analysis/ec_capsule.py`

## 目录

- `EC/`：EC 更新包、解出的更新器、Frida 脚本、EC 手册、EC RAM dump
- `BIOS/`：完整 SPI dump、官方 BIOS 更新包、提取的 BIOS 镜像、MiscTable 反汇编、解析日志

## 重要

- 不要刷修改过的 BIOS 或 EC
- 不要在 VM/Wine 里运行 EC 更新
- `BIOS/bios.rom` 包含本机 ME/序列号，只用于本机分析
- 官方 EC 更新不会改变 JIS→US；这一步只抓数据
- 先备份，再谈写入
