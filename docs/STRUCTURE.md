# 固件结构分析 — CF-SZ5P（EC + BIOS）

日期：2026-10-21
对象：`BIOS/bios.rom`（16 MB SPI dump）、`EC/ec_firmware_encrypted.bin` 解出的 `analysis/ec_firmware.bin`（198656 B）

> 注：文中引用的二进制（bios.rom 等）是机器专属材料，不入本仓库（见 .gitignore）；
> 本文件作为分析报告独立阅读。

---

## 1. BIOS：SPI 闪存布局

`bios.rom` 是 16 MB，但**前 8 MB 全 0**（dump 时没读到 descriptor / ME / GbE），真正有内容的是
0x800000–0xFFFFFF 这 8 MB 的 BIOS region。

| 偏移 | 大小 | 内容 |
|---|---|---|
| 0x800000 | — | DMI/MEI 字符串（`MEI_CFSZ5-3`）起 |
| 0x840000 | 256 KB | FV（NVAR 变量存储 A，体积 0x40000） |
| 0x880000 | 256 KB | FV（NVAR 变量存储 B，备份） |
| **0x8C0000** | **5.1 MB** | **主 FV**（FFS2，`_FVH` 在 +0x28，`FvLength=0x4E0000`） |
| 0xDA0000 | 384 KB | 另一个 FV |
| 0xE00000 | 2 MB | 另一个 FV |

主 FV 内部嵌了一个 **LZMA 压缩的 10.9 MB 子 FV**（GUID `ee4e5898-3914-4259-9d6e-dc7bd79403cf`，
props `0x5D` + dict 16 MB），这就是为什么裸 dump 里搜不到 `EcPs2Kbd` 这类模块名——它们在压缩层里。

解压后的子 FV：`analysis/bios_lzma_fv.bin`，10,928,144 字节。

## 2. BIOS：模块清单

主 FV + 子 FV 共 **252 个 FFS 文件**，其中 **211 个有名字**：

| 类型 | 数量 | 含义 |
|---|---|---|
| 0x07 | 146 | DXE driver |
| 0x0A | 62 | SMM driver |
| 0x02 | 37 | freeform |
| 0x0B | 1 | FV image |
| 0x09 | 2 | application |
| 其他 | 4 | padding / 等 |

体积最大的几个：

| 模块 | 类型 | 大小 | 作用 |
|---|---|---|---|
| UltraPostUefi | app | 1.79 MB | POST/UI |
| HttpsClientDrv | DXE | 1.16 MB | 网络 |
| IntelGigabitLan | DXE | 308 KB | LAN |
| Bds | DXE | 111 KB | Boot Device Selection |
| MiscFuncSmm / MiscFunc | SMM/DXE | 96/92 KB | 杂项功能 |
| AcpiPlatform | DXE | 71 KB | ACPI 表 |
| NVRAMSmm / NVRAMDxe | SMM/DXE | 60/59 KB | 变量存储 |
| **ECSmm** | **SMM** | **21.4 KB** | EC 的 SMM 接口 |
| **Ps2Main** | **DXE** | **20.6 KB** | PS/2 驱动 |
| **KbcEmul** | **SMM** | **17.9 KB** | **8042 键盘控制器模拟** |
| MiscTableSmm / MiscTable | SMM/DXE | 17.2/15.7 KB | 机型信息表 |
| **EcPs2Kbd** | **DXE** | **4.7 KB** | EC 键盘初始化 |

## 3. 键盘在这套固件里的位置

链路（已由代码证实）：

```
按键 → EC 扫矩阵 → EC 产生 PS/2 set-2 码
     → 写 EC 的 8042 输出缓冲
     → SMM 里 KbcEmul 拦截端口 0x60/0x64（PCH 没有真 8042，由 SMM 模拟）
     → OS 的 i8042 驱动读 0x60
```

- **EcPs2Kbd**（`2f72309e-…`，4.7 KB）：只做 SIO 设备状态（`SIO_DEV_STATUS_VAR`）、IRQ 掩码
  （`IsaIrqMask`）和 8042 初始化命令（0x60/0x64）。**不做键码转换**。
- **KbcEmul**（`3b24f79d-…`，17.9 KB，SMM）：8042 端口模拟，把 OS 对 0x60/0x64 的读写转给 EC。
- **Ps2Main**（`5fecef6b-…`，20.6 KB）：PS/2 设备驱动。
- **ECSmm**（`2c60d2c8-…`，21.4 KB）：EC 的 SMM 访问通道。

这三个模块里都没有"矩阵位 → 键码"的表（KbcEmul/Ps2Main 只有 EFI 状态字符串，无布局数据）。


## 3.1 KbcEmul 反汇编结论（SMM 8042 模拟）

模块 17,730 字节，`.text` 0x260–0x4090 全是代码，**没有任何数据表**
（后面 0x40A0–0x43D0 那块数据区全 0）。全文只有 5 条 I/O 指令，其中：

```
0x0d77  mov edx,0x64 / in al,dx     读 8042 状态口
0x2d2e  cmp ecx,0xf4                 Enable 命令
0x2d46  cmp ecx,0xff                 Reset 命令
0x2dc0  cmp dl,0xed                  Set LEDs 命令
```

内部结构是一个**字节环队列** + 8042 状态机：

```
0x2f50  入队：字节写进 [rbx+0x38 .. rbx+0x42]，head/tail 在 +0x48/+0x50
0x2f08  出队：call [rax+0x20] 交给上层协议
```

也就是说：KbcEmul 只做「收字节 → 入队 → 按 8042 协议发给主机」，**不产生也不转换任何键码**。
BIOS 侧不存在布局映射——这一点是硬结论。

## 4. EC 镜像结构

`analysis/ec_firmware.bin`，198656 字节（0x30800）：

| 偏移 | 大小 | 内容 | 依据 |
|---|---|---|---|
| 0x00000–0x0017F | 384 B | 48 项 × 8 字节表，首字恒 `0x0F802020`，次字 `(0x0480..0x1168)<<16 | flags` | 结构规整，非代码 |
| 0x00180–0x001FF | 128 B | 0xFF | 擦除态 |
| 0x00200–0x00217 | 24 B | `$AMIEC` 头 + 16 字节参数 | 魔数 |
| 0x00218–0x00FFF | 3.5 KB | 0xFF | 擦除态 |
| **0x01000–0x27FFF** | **156 KB** | **ARC 代码** | 熵 6.5–6.9，`e0 7e`（`j_s [blink]`）密度高 |
| 0x28000–0x28DFF | 3.5 KB | 掩码/指针表（0x08xx 递增、`0x00F0xxxx` 指针） | 低熵 |
| **0x28E00–0x2945F** | 1.6 KB | **KBC 块**：256 项交叉点表 + 键表 + 标志 | 与 SZ6 99.6% 相同 |
| 0x29460–0x2B7FF | 9 KB | 字符串（任务名、堆调试）+ 稀疏表 | 可读 ASCII |
| 0x2C000–0x307FF | 18 KB | 0xFF | 擦除态 |

### 4.1 `$AMIEC` 头（0x200）

```
24 41 4d 49 45 43 00 00   "$AMIEC\0\0"
32 16 8d a8               u32，未知（低 16 位恰好等于整镜像字节和 0xA88D）
b0 43 00 00               u32 = 0x43B0（可能是数据段长度）
5c 01 00 19 20 00 00 cb   与 EC RAM dump 0x00F8 处一致 → 版本/信息块
73 04
```

### 4.2 KBC 块（0x28E00–0x2945F）

- 0x290FA 起：**256 项 16×16 交叉点表**（行码 | 列码 的位掩码），扫描硬件配置；
- 0x292FC：`ACPI Info` / `0x29308`:`KBC Info` 字符串；
- 0x29310 起：0x90 字节表（内容与 SZ6 完全相同）；
- 0x293A0 起：小值表（0–0x18）；
- 0x293DC 起：键码序列（导航键 + JIS 键 0x73/0x79/0x7B）；
- 0x29454 起：1/2/0x80 值域的标志数组。

**与 SZ6 对比**：整块 1632 字节 99.6% 相同，差异 6 字节全是指针偏移，说明这是**跨机型共享的
AMI EC 键盘库**，不是 SZ5 专属的 JIS 布局表。


### 4.3 EC 代码段（0x1000–0x283FF）

156 KB，ARC（ARCompact）。用函数序言（`push_s r13/r14/r15`，0xE1C5/0xE1C6/0xE1C7）扫描得到
**608 个函数**，覆盖 159,618 字节，中位长度 160 字节，最大 7,220 字节（0x0A200）。
函数表见 `analysis/ec_functions.txt`。

### 4.4 关键负结果：数据块没有任何代码引用

对 `0x28E00–0x2945F` 这个 KBC 块，三种寻址方式都查过：

| 方式 | 结果 |
|---|---|
| 4 字节对齐绝对地址（0x28E00–0x2945F 范围内所有值） | 0 命中 |
| 全镜像 PC 相对（`pcl` 操作数，132 处） | 0 处落在这个范围 |
| 指向该范围的 32 位指针（含 RAM/外设窗口别名） | 0 命中（唯一 0x28FBC 是 banner 字符串指针） |

**SZ6 的镜像同样如此**（它那块数据在 0x28F08–0x29568，同样无人引用）。

结论：这块数据要么由**硬件直接读取**（扫描引擎按固定 flash 地址读表），要么是**死数据**。
软件层面找不到任何消费者。

## 5. 结构层面的结论

1. BIOS 侧没有任何"矩阵位 → 键码"或"JIS/US 切换"的数据或代码：EcPs2Kbd 只做初始化，
   KbcEmul 只做端口转发。
2. EC 的键盘数据块是跨机型共享的通用库，SZ5 与 SZ6 一致。
3. 因此**键位解释只能发生在 EC 的代码里，或 EC 之前的键盘硬件上**——这两处目前的静态证据
   都不足以定位到具体字节。
