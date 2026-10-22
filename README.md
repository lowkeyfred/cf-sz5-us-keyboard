# CF-SZ5 EC 键盘固件补丁（日版机 + 英文键盘）

Panasonic Let's Note **CF-SZ5**（仅在日本销售，EC 固件只带 JIS 键盘矩阵映射）。
机器换了英文键盘后，部分按键的输出与键帽不符。本项目逆向了 EC 的键盘处理流水线，
通过修补固件里的 128 字节映射表（E 表），让这些键输出键帽上印的字符。

> **状态**：v5 固件已构建并通过全部完整性校验。v3/v4 实机反馈后全部键位
> 已定位并经实机双向验证（`;`@0x0A、RCtrl@0x0B、Home/End@0x50、`=`@0x3C、
> 数字 8@0x28=KP8），实机刷写验证进行中。刷写方法见下文「使用」。

## ⚠️ 免责声明

- 本仓库**不包含任何 Panasonic 固件镜像、更新程序或 BIOS 转储**——这些都是
  Panasonic/AMI 的版权材料，请从 Panasonic 官网下载对应机型的官方更新包。
- 刷写 EC 固件有风险，操作失败可能导致机器无法开机。**作者与贡献者不对任何
  变砖、数据丢失或保修失效负责。动手前务必备份，每一步都要想清楚。**
- 所有脚本只在你自己从官方更新包提取出的文件上工作。

## 原理（一句话版）

EC 扫描键盘矩阵得到 raw 扫描码 → 查 128 字节的 E 表翻译成 set-2 码 →
经过若干处理函数 → 8042 转成 set-1 发给系统。日版固件的 E 表只按 JIS 排布；
换英文键盘后，只要把少数几个矩阵位置改指到正确的 set-2 码即可，
**不需要动任何代码逻辑**。

完整逆向过程见 [docs/FINDINGS.md](docs/FINDINGS.md)；
想把这套方法搬到别的机型，看 [docs/METHOD.md](docs/METHOD.md)。
CF-SZ5 英文键盘的最终映射表在 [docs/keymap-cf-sz5-en.md](docs/keymap-cf-sz5-en.md)。

## 目录结构

```
scripts/            核心工具链（见下）
scripts/exploration/  逆向过程中的一次性探索脚本（仅供参考）
docs/               FINDINGS.md（逆向日志，权威记录）、STATIC-ANALYSIS.md、
                    METHOD.md、keymap-cf-sz5-en.md
docs/worksheets/    实机测试记录（keyd 扫描输出等）
docs/archive/       早期交接笔记（有已知错误，以 FINDINGS.md 为准）
ghidra_scripts/     Ghidra 分析脚本与无头运行器
ghidra_out/         反汇编/反编译产物（文本，可入 git）
assets/             键盘照片
```

## 使用

前置：Windows 机器（脚本用 `ctypes` 调 ntdll 的 RtlCompressBuffer 做 LZNT1 压缩）、
Python 3、从 Panasonic 官网下载的 CF-SZ5 EC 更新包
（`EcUpdate_SZ5M123_V100L19.exe` 或更新版本）。

```bash
# 1. 准备工作目录（默认 <仓库>/work，可用环境变量 SZ5_WORK 指向别处）
#    把官方更新程序放进工作目录，或设 SZ5_UPDATER 指向它。

# 2. 从官方更新程序提取原始 EC 固件镜像
python scripts/extract_firmware.py
#    产出 work/ec_image_pristine.bin（0x30800 字节）

# 3. （可选但强烈建议）构建回滚工具：原始固件 + 允许同版本刷写的 INI
python scripts/build_restore.py        # 产出 work/EcUpdate_restore_L19.exe

# 4. 构建补丁固件（CF-SZ5 英文键盘的最终补丁集）
python scripts/build_final.py 0x1f
#    产出 work/ec_firmware_final5.img / ec_capsule_final5.bin / EcUpdate_final5.exe
```

### 刷写

1. 进 WinPE（官方更新程序拒绝在普通 Windows / VM / Wine 里刷 EC）。
2. 先跑 `EcUpdate_restore_L19.exe` 确认回滚链路正常（它会提示无需更新，属正常）。
3. 跑 `EcUpdate_final5.exe`，刷完**手动重启**（WinPE 里没有 wpeutil，
   更新程序的重启调用会静默失败）。
4. 进系统后用 `keyd monitor`（或 xev）全键扫一遍，对照
   [docs/keymap-cf-sz5-en.md](docs/keymap-cf-sz5-en.md)。

### 如果某些键还是不对

`scripts/build_diag2.py` 能构建一个"探针"固件：把所有空闲的 E 表位置接上
字母/数字标记，实机按一下错位的键、看终端里蹦出什么字母，就能反推出这个键的
矩阵位置。**注意探针固件会破坏正常按键输出，用完务必刷回正式版或恢复版。**
诊断方法学（含奇偶校验陷阱）见 [docs/METHOD.md](docs/METHOD.md)。

## 工具链说明

| 脚本 | 作用 |
|---|---|
| `sz5env.py` | 路径/环境配置：`SZ5_WORK`（工作目录）、`SZ5_UPDATER`（官方更新程序路径） |
| `extract_firmware.py` | 从官方更新程序提取原始固件镜像 |
| `build_diag_crc.py` | EC 固件 CRC24 与字节和校验（不变量维护） |
| `fix_crc_sum.py` | 修补固件后自动修复 CRC 与字节和（用 0xFF 填充区做微调） |
| `build_ecupdate2.py` | 更新程序重打包库（INI 混淆、PE 资源替换、证书裁剪、校验和重算） |
| `build_final.py` | **主交付**：CF-SZ5 英文键盘最终补丁固件 |
| `build_restore.py` | 回滚更新程序（原始固件 + SameVersionPolicy=0） |
| `build_diag2.py` | 探针固件构建器（错位键定位） |
| `build_probe.py` / `build_spy.py` | 实验性：只换胶囊的探测更新程序 / SMM 响应包嗅探 |

## 安全红线（本项目自始至终遵守）

- 没有备份 + 用户明确同意，**绝不**刷修改过的固件。
- 绝不写 EC RAM。
- 绝不在 VM/Wine 里跑 EC 更新。
- BIOS 转储只用于分析，永不入 git。

## 许可

代码以 MIT 发布（见 [LICENSE](LICENSE)）。Panasonic/AMI 固件版权归其各自所有
者；本仓库不包含它们的二进制文件。
