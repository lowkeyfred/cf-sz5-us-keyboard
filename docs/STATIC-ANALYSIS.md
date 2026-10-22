# EC capsule 静态分析报告

日期：2026-10-20
对象：`EC/ec_firmware_encrypted.bin`（134786 B）、`EC/EcUpdate_SZ5M123_V100L19.exe`（481408 B）、`EC/ec_sz5_123_m195072.exe`（546288 B）
环境：仅静态分析，未接触实机、未运行更新器

> 注：文中引用的二进制是 Panasonic 版权材料，不入本仓库；请从官方渠道获取后对照阅读。

---

## 0. 结论先行

1. **`ec_firmware_encrypted.bin` 没有加密。** 它是 `[u32][u32 原始大小][LZNT1 块流]` 的压缩容器。用
   Windows 自带的 `ntdll!RtlDecompressBuffer(COMPRESSION_FORMAT_LZNT1)` 一次成功解出
   **198656 字节（0x30800）**，返回 `STATUS_SUCCESS`，内容是一份完整、可读的 AMI EC 固件。
2. 因此 handoff 里"EC 镜像是 `@$AMIE` 加密 capsule、ECDH P-521 + AES、静态无法解密"的结论**不成立**：
   - 全文件里 `@$AMIE` 只出现 1 次（0xA6），但它落在压缩流内部、**解压后并不存在**；固件真正的魔数是
     `$AMIEC`（镜像 0x200）。也就是说 `@$AMIE` 不是这个 capsule 的格式标识。
   - `EcUpdate` 里 ECDH/AES 的用途不是"解密镜像"，见 §3。
3. 固件里只有**一套** 8×16 键盘矩阵表（128 项），没有第二套（US）表，也没有 `JIS`/`US`/`KeyboardId`
   之类的字符串或选择变量。**换语言不是切一个字节，得换一份 EC 固件**——这一点与旧结论一致。
4. 但"镜像不可动"的障碍已经消失：现在可以**解→改→重新压缩**（LZNT1 编码 Windows 也有）。
   真正未知的不再是加密，而是 EC 端是否校验镜像、以及更新通道是否加密（见 §5）。

---

## 1. 容器格式（已证实）

```
off 0x00  u32   未知 id/校验字段     V1.00L19 = 0x3E68C073
off 0x04  u32   解压后大小            198656 (0x30800)，小端
off 0x08  ...   LZNT1 块，逐块拼接
```

LZNT1 块头 2 字节（小端）：

| 位 | 含义 |
|---|---|
| bit15 | 1 = 压缩块，0 = 原样存放 |
| bit14..12 | 固定 `0b011`（本文件全部满足，用于定位块边界） |
| bit11..0 | 块数据长度 − 1 |

实测：**49 个块**，块数据合计 134680 B，正好顶到文件尾（无 trailer）。除首块 508 B 外，其余多为
3.2–3.8 KB，对应 `RtlCompressBuffer` 的 4096 B 分块习惯。

**验证向量**：同一 exe 的资源 `10/3000` 只有 45 B，按同一格式解出
`[Settings]\r\nIniFileVersion=11\r\n`（31 B）——格式判断由此确认。

`0x00` 处的 u32 不是 crc32/adler32/字节和（对镜像、对压缩流都试过），暂按"构建 id/带盐校验"处理。

> 复现：`python analysis/ec_capsule.py EC/ec_firmware_encrypted.bin -o out.bin --chunks`

---

## 2. 解出的固件镜像

`analysis/ec_firmware.bin`，198656 B，熵 6.50，SHA256 `541b8c5d83e4e6a9fb21e72f73ddd0ac8b928fcfbfea61d3f94ba30fb842d806`。

```
0x00000-0x0017F  48 条 8 字节条目，首字恒为 0x0F802020，次字如 0x01000000/0x07F40001/0x10C80000…
0x00180-0x001FF  0xFF
0x00200-0x00217  $AMIEC 头（24 B）
0x00218-0x01FFF  0xFF
0x02000-0x2A000  代码 + 数据（熵 6.5-7.0）
0x28F00-0x2Bxxx  字符串表 / 任务表 / 堆调试字符串
0x2C000-0x30800  0xFF（空片填充）
```

`$AMIEC` 头（0x200）：

```
24 41 4d 49 45 43 00 00   "$AMIEC\0\0"
32 16 8d a8               ?
b0 43 00 00               ?
5c 01 00 19 20 00 00 cb   ?
73 04                     ?
```

值得注意：本机 EC RAM dump 的 `0x00F8` 是 `5c 01 00 19 20 00 00 00`，与镜像 `0x210` 前 7 字节一致
→ 这块很可能就是运行中的 EC 暴露给 BIOS/DMI 的版本/信息块（DMI 报 EC `1.0`）。

字符串（节选，均为解压后连续可读）：

| 偏移 | 字符串 |
|---|---|
| 0x200 | `$AMIEC` |
| 0x28FBC | `(C)2014 AMERICAN MEGATRENDS INC` |
| 0x292FF | `ACPI Info` |
| 0x29308 | `KBC Info` |
| 0x29840 | `MATRIX Proc` |
| 0x29860 | `PS2 Info` |
| 0x2986C | `Ps2 Msg` |
| 0x29874 | `Smb Proc` |
| 0x2AFC4 | `TimerProcessTask` |
| 0x2B43C | `ARC_program` |
| 0x2B448 | `HOSTLINK=1` |

→ 平台是 **AMI EC 固件（ARC 核，AMI 2014 版）**，任务名体系为 `MATRIX`/`PS2`/`KBC`。

### 键盘表

- `0x291FC` 起：**128 项**（8×16）矩阵位置表，正好以 `ACPI Info` 字符串结尾；条目形如 `0x4000, 0x4001,
  0x4004, 0x4005, 0x4010, 0x4011, 0x4014, 0x4015, 0x4040, …`，按 8 个高字节分组（0x40/0x41/0x44/0x45/
  0x50/0x51/0x54/0x55）、每组 16 个位置；值是矩阵行/列的位编码。
  该模式（`00 40 01 40 04 40 05 40 …`）在镜像中**只出现 1 次**。
- `0x293A0` 起：60 字节的键码/索引小表（稀疏，含 `0x00` 空洞，值域 `0x01-0x18`），
  后面 `0x293DC` 起又是字符串。作用待定（可能是特殊键/扩展键的附加表）。
- `0x291F0` 前半还有 6 条 `0x1544/0x1545/0x1550/0x1551/0x1554/0x1555` 形态的条目，用途待定。
- 没有第二份同构表 → **固件内不存在"US 布局"这套数据**。

---

## 3. 更新器 `EcUpdate_SZ5M123_V100L19.exe`

- PE32（i386），2018-11-15，GUI 子系统，有 Authenticode 签名（overlay = 7808 B PKCS#7）。
- 导入：`bcrypt.dll`（`BCryptGenerateKeyPair/ SecretAgreement / DeriveKey / ImportKeyPair /
  Encrypt / Decrypt / GenRandom`…）、`SETUPAPI`（枚举设备接口）、`DeviceIoControl`。
- **没有** `BCryptVerifySignature`、`BCryptSignHash`、`WinVerifyTrust`、`CryptVerify*` —— 不导入任何
  签名校验 API。
- 通过 `GetProcAddress` 动态解析 `ntdll!RtlDecompressBuffer` / `RtlCompressBuffer` /
  `RtlGetCompressionWorkSpaceSize`（字符串在 0x3E7B0 区）——与 §1 的 LZNT1 判断互相印证。
- 界面字符串（资源 6/7…9）透露的流程：
  - "This program updates Embedded Controller."
  - "Embedded Controller Update must be executed on Windows PE."（日文资源同义）
  - "Access to System Interface Device - 0021 or 0040 was unsuccessful." → EC 通过
    **System Interface Device（0021/0040）** 访问
  - "The ROM file is not specified." / "The specified ROM file cannot be read." → **支持命令行传入 ROM 文件**
  - "This model is not supported."、`CFSZ5-1` / `CFSZ5-1L`（机型判据）
  - PDB 路径：`C:\EC\trunk\tools\EC_Update_V200\Release\EcUpdate.pdb`（AMI EC_Update V200）
- 安装包 `ec_sz5_123_m195072.exe` 内嵌 CAB（0x4031D）只有一个文件，SHA256 与
  `EcUpdate_SZ5M123_V100L19.exe` **完全相同**；没有第二份/其他机型/其他语言的镜像。

### ECDH + AES 是干什么的（推断，未证实）

既然固件本体是明文 LZNT1，ECDH/AES 不可能是"解密镜像"。合理推断只剩两类：

1. **与 EC 的握手/挑战应答**（updater 生成临时密钥对 → 把公钥交给 EC → 双方派生会话密钥）；
2. **传给 EC 的数据在 IOCTL 层再加密一次**（即使盘上是明文，线上是密文）。

区分方法只有一个：抓 `DeviceIoControl` 的 in/out buffer。这也把 Frida 脚本的重点改了：

- ~~`BCryptEncrypt` 输入 = 明文固件~~（不会发生）
- **`RtlDecompressBuffer` 输出 = 明文固件**（现在已知它一定会有，而且我们静态已经拿到了）
- `DeviceIoControl` = 真正的协议层（要看的在这里）

---

## 4. 对"JIS→US"的意义

| 问题 | 结论 | 依据 |
|---|---|---|
| BIOS 里有键盘表吗 | 没有 | 旧结论成立；本轮复核 `bios.rom` 无 `JIS`/`Keyboard`/`$AMIEC` |
| EC 里有 JIS 表吗 | 有，且只有一套 | `0x291FC` 的 128 项矩阵表 + `0x293A0` 的 60 B 附加表，模式唯一 |
| 有 US 表/布局开关吗 | 没有 | 无第二套表、无相关字符串 |
| 官方包里有 US 镜像吗 | 没有 | 安装包内仅一个 EcUpdate.exe、一份 capsule |
| 镜像是加密的吗 | 不是，LZNT1 | `RtlDecompressBuffer` 直接解出 |
| 能改镜像吗 | 能解能压缩 | 缺的是 EC 端校验与传输加密的信息 |

也就是说：**US 布局在这套固件里根本不存在**，不是被隐藏/加密，而是没编译进去。想得到 US 行为，
只能改 EC 的矩阵→键码表（自己造一份 US 表），这属于"改固件"，而不是"选选项"。

---

## 5. 还能静态做/必须动态做的

静态可继续：

1. 用 ARC 反汇编器（`arc-elf32-objdump` / Ghidra ARC 插件）从 `0x2000` 起反汇编，定位
   `0x291FC` 矩阵表与 `0x293A0` 附加表的引用，确认键码生成逻辑、以及是否存在运行期改表路径。
2. 解 `0x000-0x17F` 那 48 条 8 字节条目（像中断向量/参数表）和 `$AMIEC` 头字段。
3. 用 `RtlCompressBuffer` 生成"改过的 capsule"，与原始做二进制 diff，确认可逆、能通过工具自身的
   读取路径（工具支持 `ROM file` 参数这点很关键）。

必须动态（实机）：

4. EC 是否校验镜像：无签名 API 导入，但可能存在 CRC/自定义校验或 EC 端签名校验。
5. 传输层是否加密：看 `DeviceIoControl`。

---

## 5b. 第二轮：改表可行性（2026-10-20 晚）

### 5b.1 重打包可以做到**逐字节一致**

```
python analysis/ec_patch.py EC/ec_firmware_encrypted.bin -o repacked.bin
→ capsule 134786 B, image 198656 B, repack 134778 B payload, round-trip OK
→ 与原始文件 diff：0 个字节不同
```

结论：容器的压缩参数（`RtlCompressBuffer`，4096 B 分块，含首块 508 B 的特殊分块）已经完全掌握。
"解 → 改任意字节 → 重新压缩 → 得到同格式 capsule" 这条路是通的，生成物在格式上与原厂无法区分。

### 5b.2 架构确认为 ARC（ARCompact）

代码区有 **645 处 `e0 7e`（`j_s [blink]`，ARC 的 return）**，MIPS/Thumb/H8/8051 的特征码全部为 0 或个位数。
`rasm2 -a arc -b 32` 与 radare2 的 `arc` 插件都能正常反汇编（工具已下载到 `analysis/tools/radare2-6.2.4-w64`）。

### 5b.3 对 §2 键盘表判断的修正

`0x290FA` 起是一张 **256 项（16×16）交叉点掩码表**：行索引/列索引各取 16 个"线码"
（`0x00,0x01,0x04,0x05,0x10,0x11,0x14,0x15,0x40,0x41,0x44,0x45,0x50,0x51,0x54,0x55`），
表项 = `(行码, 列码)` 两字节拼成的 16 位掩码。它描述"某个矩阵交叉点对应哪些 GPIO 线"，
是**扫描配置**，不是键码。§2 里说的"0x291FC 起 128 项"其实是这张 256 项表的后半段。

### 5b.3b 全镜像没有 PS/2 键码表（负结果，重要）

用指纹在 EC 镜像和 8 MB BIOS 里搜过，全部为 0：

| 指纹 | 结果 |
|---|---|
| set-2 F1–F12 连续序列 `05 06 04 0C 03 0B 83 0A 01 09 78 07` | 0 |
| 128 B 窗口内覆盖 ≥22/26 个 set-2 字母码 | EC 0 / BIOS 0 |
| 128 B 窗口内 ≥18 字节落在 HID 字母区 `0x04-0x1D` | 只有 KBC 表自身的重复模式（假阳性） |

结论：**"矩阵位 → 键码"不是一张连续的 PS/2 码表**。要么在代码里现算，要么编码成别的形式
（键号、位域），要么根本不在 EC 里（由 BIOS/host 侧完成）。

### 5b.3c 数据访问方式

全镜像里指向 `0x28C00-0x2A000` 的 32 位绝对地址**只有一个**：`0x28FBC`（版权串），出现于代码
偏移 `0x1544` 的常量池。也就是说 KBC 数据块以 `0x28FBC` 为基址、用 `基址+偏移` 访问，
所以搜不到任何 `0x29xxx` 指针。要定位键码表必须做寄存器级数据流追踪。

### 5b.3d 一条可能有用的线索：固件自带调试监视器

镜像尾部有 `ARC_program`、`HOSTLINK=1`、`Displaying heap on standard output.`、`MALLOC_LEVEL`、
`Dump of heap:` 等字符串 —— AMI EC 固件带一个 host-link 调试通道。如果真机能把这条通道打开，
就可以**在运行时直接 dump EC 内存**，比静态逆推快得多，也能直接看到矩阵→键码的活的表。

### 5b.4 两个待确认的完整性字段

| 位置 | 观察 | 风险 |
|---|---|---|
| 容器 0x00 | 0x3E68C073；不是 crc32/adler/fnv/djb2/fletcher/字节和 | 若 updater 校验，改包后需同步 |
| 镜像 0x20A | 16 位值 0xA88D **恰好等于整镜像的字节和**（含自身） | 疑似校验字；改表后大概率要重算 |

`0x20A` 这个自指性质（包含自身字节求和）在数学上不唯一，所以它也可能只是巧合（1/65536），需要实机或
反汇编确认。


---

## 5c. 第三轮：BIOS 侧与"到底有没有键表"

### 5c.1 BIOS 主 FV 解压成功

主 FV 里的模块压在 **LZMA 段**（GUID `ee4e5898-3914-4259-9d6e-dc7bd79403cf`）里，所以裸 dump 搜不到
`EcPs2Kbd` 这类名字（UEFI UI 名是 UTF-16，也搜不到）。段头布局：

```
GUID(16) | DataOffset(2)=0x18 | Attributes(2)=1
+0x14: 5D 00 00 00 01   LZMA props(0x5D) + dictSize(0x01000000)
+0x19: 8 字节解压后大小
+0x21: LZMA 裸流
```

用 Python `lzma.FORMAT_ALONE` 直接解出 **10,928,144 字节** 的嵌套 FV → `analysis/bios_lzma_fv.bin`
（含 312 个 PE32 模块）。

### 5c.2 EcPs2Kbd 驱动本身不含布局表

FFS 文件 GUID `2f72309e-…-8f78`（FV 内偏移 0x392E68，PE 在 0x392EAC，4.7 KB）。反汇编显示它做的是
**8042 主机侧**的事：`mov edx, 0x60` / `lea esi,[rdx-0x5f]` / `lea ebp,[rdx-0x5e]`，然后走 CPU I/O
协议的 `IoRead/IoWrite`。没有"矩阵位 → 键码"的转换表。

### 5c.3 找到一个 set-2 码表，但是字符表不是布局表

FV 内 0x62065E 有完整的 `F1..F12 = 05 06 04 0C 03 0B 83 0A 01 09 78 07`，前面 0x620628 是
**A–Z 字母序**的 set-2 码（`1C 32 21 23 …`），再前面是 `1..0`、`Enter/Esc/BS/Tab/Space/…`。
这是 Setup 模块里"字符 → 扫描码"的表（旁边就是 `Setup` / `OSType` 字符串），不是键盘布局映射。

### 5c.4 EC 镜像里彻底没有 set-2 数据

| 序列 | EC | BIOS FV |
|---|---|---|
| A–Z 字母序 set-2（26 B） | 无 | 0x620628 |
| `1..0` set-2（10 B） | 无 | 0x620642 |
| Enter/Esc/BS/Tab/Spc/… | 无 | 0x62064C |
| F1–F12 set-2 | 无 | 0x62065E |

EC 固件里连一个 set-2 码都不出现 → 键码不是"查表发出去"的。

### 5c.5 这意味着什么

三种可能，静态无法再区分：

1. EC 用**代码**现算键码（switch/位运算），表不存在；
2. EC 的键码表在**更新的镜像之外**（另一块 flash 分区/配置区，更新器不碰）；
3. 两个键在 US 键盘排线上就**电气并到同一个矩阵节点**（真·别名），那样无论怎么改固件都分不开。

第 3 种与你观察到的"两个键同一个码"完全吻合，而且能解释为什么找不到重复表项——重复发生在
硬件层面，不在数据里。

---

## 6. 工具与产物

| 文件 | 说明 |
|---|---|
| `analysis/ec_capsule.py` | capsule 解码器（ctypes 调 ntdll，权威实现），带块统计 |
| `analysis/ec_patch.py` | **改表工具**：解码 → 改字节 → `RtlCompressBuffer` 重打包 → 回读校验 |
| `analysis/ec_firmware.bin` | 解出的 198656 B 固件镜像 |
| `analysis/disasm.txt`（已删） | ARC 线性反汇编，可用下面一行重新生成（会跨越数据区错位，仅供浏览） |
| `analysis/tools/radare2-6.2.4-w64/` | 便携 radare2（含 ARC 反汇编插件） |

重新生成反汇编：

```
analysis/tools/radare2-6.2.4-w64/bin/radare2.exe -q -a arc -b 32 -m 0 \
  -e scr.color=0 -c "pD 163840 @ 0x2000" analysis/ec_firmware.bin
```
| `analysis/peinfo.py` | 无依赖 PE 解析（头/节/导入/资源/overlay） |
| `analysis/scan.py` | 熵图 + 字符串 + 魔数扫描 |
| `analysis/needles.py` | 跨文件关键字定位 |
| `analysis/descriptor.py` | Intel SPI descriptor 解析（本 dump 前 8 MB 全 0，实为仅 BIOS region） |
| `analysis/lznt1*.py` | 纯 Python LZNT1 尝试，**未完成**（phrase 语义未对齐），仅作参考 |

> 注：`bios.rom` 实测 0x000000–0x7FFFFF 全 0，只有 0x800000 起 8 MB 是 BIOS region；
> handoff 里"Descriptor + ME + GbE + 8 MB BIOS region"的说法与本文件不符（dump 未包含前段）。
