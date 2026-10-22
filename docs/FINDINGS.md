# CF-SZ5 EC 键盘逆向 — 最终发现（2026-10-21，Claude，全部经 Ghidra SLEIGH 反编译验证）

> 本文件取代此前所有 handoff 结论。根因：**CF-SZ5 仅在日本销售，EC 固件只含 JIS 键盘矩阵映射**。
> 淘宝英文键盘右侧按键闭合的矩阵交叉点，在 JIS 映射表里对应的是别的键（或无键），固件如实上报。

## 1. 完整按键事件管线（每条均已反编译验证）

```
矩阵扫描 → RAM 0x800B70[keyslot] = raw 索引
  → fn_3C30 → fn_10D7C(event, keyslot)
    → fn_123A4(raw & 0x7F):
        code = E[raw]            @0x2969C (128B, set-2 码)
        if code==0x96 && gp[-0x9e]&2: code = gp[-0xd8]   (运行时重映射, RAM)
        if code ≥ 0xC0 (转换条件: state&2 或 gp[-0xe4]&0x20 —— 经实测全局状态, 见§4):
            0xC0-0xDF: code = 2c-0x17F (state&2 或 gp=0x20) 或 2c-0x180 (否则)
                       code = T7128[code]  @0x2971C (64B 表)
            0xE0-0xFF: code = CT[code]:  fw[0x29400+(code&0x1F)] (gp[-0xd6]&3≠0 且 !RAM[8004b9]&1)
                                         fw[0x29420+(code&0x1F)] (否则)
        code = FUN_207bc(code)   (0x89/0xB2 → gp[-0x6c]=-1, 仅标记不重发)
    → fn_10D7C 分发:
        code < 0x80: fn_165B8 → 原样发码 (wire = code)
        code ≥ 0x80: slot = idx[code] = fw[0x2931C+code] (须 ≤0x24)
                     handler2 = T2[slot](code,event); 返回非0 → handler1 = T1[slot](event)
  → 发送: FUN_1613C(x)=发x; FUN_16148(x)=发E0 x; FUN_055BC(x)=发F0 x; FUN_055D4(x)=发E0 F0 x
```

- **handler 表 T1 @0x29778 / T2 @0x297DC（各 25 项, slot 0-0x24）**：
  slot 0=原始发送(0x165B8), 1=0x165D8, 2=Pause E1 14 77(0x1799C,前置0x1796C: make 返回非0/break 返回0),
  3=0x18080, 4=0x18138, 5=Break 序列(0x559C), 6/7/8=模式键(0xE458/E4C0/E528),
  9=PrtSc E0 12 E0 7C(0x17FEC,前置0x17FB0 恒非0), 10=0x15224, 11=0x15274,
  12-24=通用 E0 导航(0xFCC8/0xFC8C 对): nav 码表 @0x293D0:
  slot: 12=70 13=6C 14=7D 15=71 16=69 17=7A 18=75 19=6B 20=72 21=74 22=1F 23=27 24=2F
  （即 Insert Home PgUp Del End PgDn ← → ↓ ↑ 及 1F/27/2F=Win/App 类）
- **FUN_7128 = 单表查询 `fw[0x2971C + input]`**（64 字节, 0x00-0x3F 有效），不是变换
- **FUN_207bc 校验**：仅 0x89、0xB2 视为"不重发"，其余放行
- **实测运行时全局状态**（由观察值反推）：gp[-0xd6]=0x01（→ CT1 分支、fn_fcc8 mode 0 无 fake shift）；
  gp[-0xe5]=0（→ 模式键/特殊 handler 走 mode-0 分支）
- Path 2（fn_fff4→fn_100ac, 0x29454/0x29468 表, key#<0x13, 码集 {a6..b1,10..40}）= 19 个 ACPI/内部功能键，
  与本故障无关。表 A-D @0x2949C-0x2961C 仅被 0x79B4/0x79C4/0x79D6 thunk 引用（无按键期调用者），为 init 期数据。

## 2. 8 个错键的固件定位（观测 wire 码 ↔ E 表入口一一对应，全部唯一）

| 物理位置 | 实测 | wire (set-2) | raw | E[raw] | 路径 | 内部码 | 分发 |
|---|---|---|---|---|---|---|---|
| Menu 位 | 70/F0 未映射 | 70 | 8 | 0xE9 | CT1 | 0x70 (<0x80) | 原样发 0x70 |
| Del 位 | 73/F3 未映射 | 73 | 105 | 0xE4 | CT1 | 0x73 | 原样发 0x73 |
| Ins 位 | E05D/E0DD (Menu) | E0 2F | 120 | 0xB6 | 直接 | 0xB6 | slot24→nav 2F |
| PrtSc 位 | E052/E0D2 (Insert) | E0 70 | 124 | 0xD2 | pB→T[24]=8A | 0x8A | slot12→nav 70 |
| Pause 位 | E053/E0D3 (Delete) | E0 71 | 56 | 0xD9 | pB→T[12]=8D | 0x8D | slot15→nav 71 |
| RAlt/HomeEnd/Backslash 位 | 0D/8D '=' ×3 | 55 | **60** | 0x55 | 直接 | 0x55 | 原样发 0x55 |

**三个 '=' 键的真相**：E 表中能产出纯 0x55 的只有 E[60]（FUN_7128 输出无 0x55；
CT1 输出无 0x55；slot 7 的 0xE4C0 发 0x12+0x55 带 fake shift，与观测不符；
E[32]=0x96 需 gp[-0xd8]=0x55 才可能）。三个不同物理键 → 同一 raw 60：
**淘宝键盘把其中≥2个键并联到了同一个矩阵交叉点，固件层面无法区分**。
（E[120]=0xB6 说明 JIS 原设计里 raw 120 本来就是 Menu 键——机器上 JIS 键全部正常，交叉点本身存在。）

## 3. 补丁清单（6 字节，全部走已验证的确定性路径）

| 文件偏移 | 表项 | 原值 | 新值 | 物理位置 | 结果 (set-2 wire) | 验证依据 |
|---|---|---|---|---|---|---|
| 0x296A4 | E[8] | E9 | **B6** | Menu 位 | Menu (E0 2F) | slot24 链路 = 今天 Ins 位实测链路 ✓ |
| 0x296D4 | E[56] | D9 | **89** | Pause 位 | Pause (E1 14 77) | 0x1796C make 返回非0 ✓；0x89=不重发标记，语义正确 |
| 0x296D8 | E[60] | 55 | **5D** | RAlt/HomeEnd/Backslash 位 | Backslash (5D) | <0x80 原样发送 ✓ |
| 0x29705 | E[105] | E4 | **8D** | Del 位 | Delete (E0 71) | slot15 = JIS Delete 键在用链路 ✓ |
| 0x29714 | E[120] | B6 | **8A** | Ins 位 | Insert (E0 70) | slot12 = 今天 PrtSc 位实测链路 ✓ |
| 0x29718 | E[124] | D2 | **88** | PrtSc 位 | PrtSc (E0 12 E0 7C) | slot9 = JIS PrtSc 键在用链路，0x17FB0 恒非0 ✓ |

- 备选值（如需换功能）：Home=E0 6C←E=**8B**（slot13），End=E0 69←E=**8E**（slot16），
  Break=Ctrl+E0 7E←E=**B2**（slot5，JIS Break 键链路），LAlt←E=**11**（原样发，含 modifier 特判）。
  **RAlt (E0 11) 本固件无法产生**（nav 表无 0x11、无对应 handler）。
- 补丁只改 E 表数据，不动代码；新码均 <0xC0 或走已验证 slot，无 pA/pB 赌博。
- v1 刷入后若三个 '=' 位中有**一个**仍发 '=' → 该位是 raw 32（gp[-0xd8]=0x55 情形）→
  v2 追加 0x296BC (E[32]): 96→**8E**（End）。若三个都发 5D → 完成，勿动 E[32]。
- 重打包：ec_patch.py（round-trip 已验证 0 字节差异）。**刷写需用户明确确认 + 先行备份**（ standing 约束）。

## 4. 运行时全局状态推导（解释为何 CT1/pB/mode-0）

- Menu/Del 位观测 = CT1[0xE9]/CT1[0xE4] ⇒ CT1 分支激活 ⇒ gp[-0xd6]&3≠0 且 RAM[8004b9]&1=0
- Ins/PrtSc/Pause 位观测无 fake shift ⇒ fn_fcc8 mode 0/3 ⇒ gp[-0xd6]&2=0
- 合得 gp[-0xd6]=0x01；PrtSc/Pause 位走 pB ⇒ 这些 keyslot 的 state&2=0 且 gp[-0xe4]&0x20≠0x20
- 三个 '=' 位（raw 60）原 E=0x55 <0xC0 不经转换，故其 state&2 未知 —— 补丁避开 C0-DF 区，不受影响

## 5. 其他结论

- SZ6 EC 固件的 E 表与 SZ5 **逐字节相同**（数据区整体 +0x108 偏移），同样只有 JIS 映射 → 无现成英文键表可抄
- 矩阵解码表 @0x29100：16 记录 × 14 个 u16 图样（行选通 {04,05,10,11,14,15,40,41,44,45,50,51,54,55} 编码）
- 重打包管线：capsule = [u32 id=0x3E68C073][u32 size][LZNT1 chunks]；ec_patch.py repack 已验证字节级一致
- 用户实测 keycode 文件 = set-1 域（atkbd 翻译后）：已映射键显示 set-1 码，未映射键原样透传 set-2 字节

## 6. 诊断固件（2026-10-21，替代 v1 —— v1 作废勿刷）

用户实验证明 3 个 '=' 键是**三个独立矩阵交叉点**（可互相打断，均情况 B），
固件可以在固件层区分。目标从"统一映射"改为"先定位、再分别映射"。

**诊断原理**：fn_10D7C 在 0x10DAC 用 `bmsk_s r0,r0,0x6` 把 raw 位置掩成 7 位
（位置 p 与 p+128 查同一个 E[p&0x7F]）。把这句换成 `bl 0x286AC` 跳转到 8 字节
code cave，对 raw 位置做 `lsr r0,r0,1` 再返回：
- '=' 链上的位置 {32,60,160,188} 全部为偶数 → p>>1 无歧义
- 四个位置分别落在 E 索引 {16,30,80,94} → 把这 4 个 E 项改成 F1..F4
  （E[16]=0x07, E[30]=0x0F, E[80]=0x17, E[94]=0x1F，slot 字节 0x35/0x2D/0x25/0x1D 均有效）
- 按物理键报 F1/F2/F3/F4 即知位置：F1→pos32, F2→pos60, F3→pos160, F4→pos188

**补丁布局**（36 处差异，基线 = 机器转储 ec_firmware.bin）：
- site 0x10DAC-0x10DB1: `0209c00be078` = bl 0x286AC; nop_s（Ghidra 已验证解码）
- cave 0x286AC-0x286B3: `2f200200` lsr r0,r0,1 ; `3a8d` ldb_s r1,[r13,0x1a] ;
  `e07e` j_s blink（plain bl 使 blink=0x10DB0，跳过 nop 后从 nop 继续，Ghidra 已验证）
- E 表 8 字节（4 个功能映射 + 4 个压缩微调，微调位均为无键占用的 0xFF 项）
- CT2 窗口 0x29423-0x2943F 共 15 字节压缩微调（CT2 在本机已验证不启用、代码无引用；
  注意 CT2[31]=0x55 被清零，若 gp[-0xd8] 源于此则 0x96 重映射目标变 0x00——
  诊断期内只影响产生 0x96 码的键，即原第三 '=' 通道本身，不影响定位）

**尺寸**：payload 必须精确 134778 B（capsule 134786 B 才能原位替换 exe 资源）。
LZNT1 微调算法：先贪心 4 值集（0x5A/0x00/前邻/后邻），再全值 256 扫，再负增量组合。
最终 delta=0，往返解压逐字节一致。

**产物**：ec_firmware_diag.img / ec_capsule_diag.bin / EcUpdate_diag.exe（473600 B，
自 EcUpdate_test3_samesize.exe 换资源 + 剥签名）。

**诊断期行为警告**：所有其他键的码值都会被 halve（移位后串键）——属预期，
只测 3 个坏键。恢复原固件：重刷官方更新或（用机器转储封装的恢复 exe）。

**编码教训**（Ghidra assembler 验证）：B s20shift1 = low10@bits[1:10]（<<1），
BL s19shift2 = low9@bits[2:10]（<<2）+ bit1=1；两者搞混会编出 "bl 目标错位"。

## 7. 刷机工具独立重分析（2026-10-21，不信任任何先前文档，全部 Ghidra 验证）

官方更新器 EcUpdate_SZ5M123_V100L19.exe（从 PFW 包 ec_sz5_redownload.exe 提取），
先前文档对它的描述**多处错误**，已逐条推翻：

- 胶囊**不是**从文件裸偏移 0x48058 读取：代码走 `FindResourceW(hModule, 3003, RT_RCDATA)`
  （FUN_00413cf0），裸偏移常量全 exe 零引用。正确做法 = 改 PE 资源目录条目。
- 胶囊头 dword0 **不是**魔法 ID 0x3E68C073，而是**解压后整像的自定义 CRC32**
  （FUN_00413ca0：初值 0xFFFFFFFF，查表 `crc=(crc<<8)^T[(crc>>24)^byte]`，末异或
  0xFFFFFFFF；表非标准多项式，RVA 0x46B58/file 0x45B58，已导出 ecu_crc_table.bin）。
  校验失败 → "Bad CRC" → 错误 0xD。

**之前工具"一刷就报错进不去"的根因**：旧重打包沿用了 0x3E68C073 头 → CRC 不符 → 0xD。
**官方工具"EC 已是最新"的根因**：官方 exe 内嵌胶囊 == 本机转储（0 差异），
SameVersionPolicy（策略表 RVA 0x466F8，id 0x15，默认 2）→ 同版本直接拒绝。

**INI 资源 3000 格式已破解**（45 字节）：
`[u32 自定义CRC(明文)] [u32 明文长度] [u8 混淆长度] [u16 0x00B0] [混淆文本]`
混淆 = 明文每 8 字节插 1 个 NUL（原始 INI 明文 31 B → 混淆 34 B，已用 exe 原字节复现验证）。
明文 = `[Settings]\r\nIniFileVersion=11\r\n`。

**修复方案**（EcUpdate_diag.exe，自原版 exe 重建，473600 B）：
1. 诊断胶囊头改为 0xD8E4EE30（= ecu_crc(diag image)，往返验证通过）
2. INI 明文改为 `[Settings]\r\nIniFileVersion=11\r\nSameVersionPolicy=0\r\n`
   （69 B 资源；原 45 B 装不下 → 胶囊移到 file 0x480A0/RVA 0xE30A0，
   资源目录条目 [10/3000/1033]→file 0x462d8、[10/3003/1033]→file 0x462e8 已同步改写）
3. 剥 Authenticode 证书目录 + 截断 overlay 于 0x73A00 + PE 校验和已重算（0x00082C96）

**副作用（不影响刷机）**：移动后的胶囊占用 0x480A0-0x68F22，覆盖了 RT_GROUP_ICON(14/700)、
RT_VERSION(16/1) 元数据——资源管理器图标/属性页版本标签可能显示异常，与刷写流程无关。

**刷写流程**（FUN_00408930 验证）：镜像分类($AMIEC→type2) → 机器 ID 校验(不符→0xC9) →
版本门(SameVersionPolicy=0 放行) → SIF 驱动 MF1301 分块上传 → FUN_00406540 刷写。
exe 经资源树重解析 + LZNT1 重解压 + CRC + PE 结构全量验证：胶囊==diag image（36 差异），
INI 解混淆==预期明文，校验和一致。
**启动即刷写，无用户交互门**——验证时切勿在真机上运行，除非确认要刷。

## 8. EC 镜像完整性校验破解（2026-10-21，第二轮实测）

**症状链**：修正版 diag exe（胶囊 CRC 已修）仍报 "This model is not supported. [Code=214]"。
214=0xD6 ← FUN_00407ac0(0xB)；0xB ← FUN_004051f0 发现 MF1305 响应 local_c 标志位 0/1 置位。
MF1305 在 MF1301 上传镜像**之后**发出——即 EC/BIOS 校验的是已上传镜像本身，与更新器 exe 无关。

**实验**：三个单区域探针（E 表 1 字节 / 代码 14 字节 / CT2 窗口 1 字节，均用原版 INI 保证不刷机）
**全部**报机型不支持 → 校验覆盖整个镜像。

**算法**（两个独立样本 SZ5/SZ6 对比破解）：
- $AMIEC 头 @0x200：0x208 u16 = 0x1632（两机相同常数），**0x20A u16 = 镜像校验值**
  （SZ5=0xA88D，SZ6=0xD2D7）
- 校验 = **16 位字节和**：`sum(全 0x30800 镜像) & 0xFFFF == u16@0x20A`
  （等价于：除 0x20A-0x20B 两字节外所有字节之和 ≡ 0 mod 0x10000）
- 0x213 = 版本字母号（SZ5=0x19='L19'，SZ6=0x16='L16'，与更新器文件名 V100L19 吻合）

**修复**：补丁后重算字节和，在 0x2B453 之后的 0xFF padding 区贪心调整个别字节使
"其余字节和 ≡ 0"，0x20A 保持原厂值 0xA88D 不动（与原厂镜像校验行为逐字节等价）。
探针 EcUpdate_probe_E2.exe（E[16] 改 + padding 补偿 + 原版 INI）用于零风险验证：
预期报"已是最新"（通过机型校验、被版本门拦下）而非"机型不支持"。

## §9 SMM validator semantics — CORRECTIONS to §8 (2026-10-21)

**Bytesum@0x20A is NOT the (sole) verifier** — probe_E2 (bytesum-compensated) still failed CODE=214.
Disassembly of PcOemEcUpdateSmm.efi MF1305 handler (real fn start 0x9a6c, Ghidra's FUN_00009b20 was
mid-stream) gives exact flag semantics:

- `esi=0` (not an expected value!) — Ghidra's `unaff_SI` misled us
- bit1 (2): set iff `Validate(image, 0x30800) == 0`  → **Validate returns 0 = BAD, nonzero = GOOD**
- bit0 (1): set iff tag != "$AMIEC"+0x20d=='C'
- bit15 (0x8000): image buffer NULL; bits 2..14 → updater returns 0x14
- Validate via iface table ptr DAT_00014560, called as `call [rax+8]` with rcx=image (DAT_00014568),
  edx=0x30800; vtable[0] = GetVersion (extracts 6 identity bytes, fills rsp+0x38..0x3d)
- Known: Validate(pristine)=nonzero (recovery exe passes), Validate(any modified)=0 — even
  bytesum-compensated. Machine EC dump == pristine L19 byte-for-byte.
- iface ptr filled at runtime via named-dispatch registry (`call [rax+0xd0]`, descriptor-based,
  r8=&global out-param). Provider module NOT located: no $AMIEC tag-check outside
  PcOemEcUpdateSmm.efi + its DXE twin PcOemEc_sib1.efi (byte-clone, same imports).
- SZ6 image (sz6/ec_sz6_firmware.bin) available for differential analysis:
  u16@20A = sum&0xFFFF confirmed for BOTH (0xA88D / 0xD2D7). Content-dependent fields:
  u16@210 (0x015C/0x0171), u8@217 (0xCB/0x57), u16@218 (0x0473/0xC513). Constants both models:
  u16@208=0x1632, u16@20C=0x43B0, u8@214=0x20, u16@21A=0xFFFF.
- No CRC16 variant (14 tried) / CRC8 / subrange sum / word-sum / fletcher matches those fields.
- No expected EC digest (ecu/zlib CRC32, sum) found anywhere in bios_lzma_fv.bin.

**Probe matrix built** (original INI = never flashes; success = shows EC version, fail = 214):
- probe_SUM: 1 padding byte changed, bytesum BROKEN → tests whether bytesum is checked at all
- probe_PAD: 258 padding bytes changed (0x30000-0x30101), bytesum KEPT → tests padding-region coverage
- probe_ID: header-only change (0x217 +1, 0x210 -1), bytesum KEPT → tests header-field coverage

## §10 Update protocol structure (2026-10-21, from capstone disasm)

**Probe results**: probe_SUM, probe_PAD, probe_ID ALL fail 214 → validator covers code + header
fields + padding (full image), bytesum-preserving changes fail everywhere. Multi-checksum theory.

**SMM command table @0x2500** (PcOemEcUpdateSmm.efi): cmd 0x313→0x9920, 0x413→0x994c,
0x513→0x9a6c (validate), 0x613→0x9c68 (commit, needs DAT_00014996), 0x713→0xf180 (SW reg),
0x813→0xf3d8 (compare: calls 0xf214 version/model cmp), 0x913→0xf600 (NVRAM get/set),
0xa13→0xf640 (analyze iface [rip+0x4ebe]+0x10).
sib1 (DXE twin) own table @0x1d50: cmd 0x113→0x7e70 (MF1301 UPLOAD!), 0x114→0x9054,
0x115→0x9c74, 0x116→0x6bd0, 0x117→0x9a78, 0x118→0x5600, 0x119→0xa8dc, 0x11a→0x976c,
0x11b→0x98ac, 0x11c→0x99e8, 0x11d→0x9a14, 0x11e→0x6d0c, 0x11f→0x909c; 0x205/0x210-214/0x21a-21e/0x230+→...

**Updater flash path** (FUN_00406540): all "EC self-update" commands, no raw write:
MF1303 (FUN_00417ff0, packet {0x1303,0x8000c,val}), MF1309 SetUpdateConfig (FUN_00418710,
packet {0x1309,0x140014,2,type,value}), MF130A (FUN_004187a0), MF1306 commit. Validation
gates commit; no updater-level bypass. All send via FUN_00414e50.

**EC-side code found** (in ec_image_pristine.bin): bytesum constant 0xA88D embedded at
0x18383 (likely the EC's own image-check!); '$A' immediate-compare idiom `40 24 41 30` at
0x377f/0xdc55/0xfe07/0x16b77/0x185a5/0x1c27b (6 sites); "$A\0/$G\0" strings at 0x254f1.
Ghidra decompile of these sites in progress (ghidra_out/ec_validate.txt).

## §11 MF1305 exchanger layout + EcUpdate_spy codecave (2026-10-21)

**FUN_004180f0** (updater MF1305 exchanger, disassembled):
- Request: 0x16-byte stack packet @ [ebp-0x18] = {dword 0x000C1305, word 0x16, ...},
  sent via FUN_00414e50(buf, 0x16); response written back into the same buffer.
- Response fields: [0]=status (0=ok); [8..0xD] → DAT_004488a0+a5 (EC identity 6B);
  [0xE..0xF] → local_c flags word (bit0=tag bad, bit1=Validate==0); [0x10..0x15] →
  DAT_004488a6+ab (uploaded-image identity 6B, = GetVersion extraction).
- Caller FUN_004051f0: local_c & 3 → 0xB → 0xD6 → "model not supported [Code=214]".

**EC-image hunt closed**: all 9 candidates (bytesum site 0x18383, '$A' idiom sites
0x377f/0xdc55/0xfe07/0x16b77/0x185a5/0x1c27b, others) decompiled via Ghidra
(ghidra_out/ec_validate.txt) — ALL false positives (cmd sender, 2-byte complement
checksum, KBC port writer, matrix timing). No 0x30800 constant in EC image → no
EC-side full-image loop; Validate's reference is content-intrinsic (SMM-side,
algorithm still uncracked: header u16@210/u8@217/u16@218).

**EcUpdate_spy{PAD,PRISTINE,ID}.exe** (build_spy.py): pristine updater + original
INI + codecave at VA 0x43B88 (.text tail padding, 0x78B, verified zero) hooked over
0x41815a (5 bytes after the MF1305 transport call). Cave: pushad; CreateFileW
("ec_spy.log", OPEN_ALWAYS|FILE_APPEND_DATA) via IAT 0x443b58; WriteFile 0x16 bytes
from [ebp-0x18]; CloseHandle; popad; mov esi,eax; test esi,esi; jne 0x4181a8 (fail
epilog) else jmp 0x41815e (original jne re-runs with cave flags). Branch targets,
name pointer, PE checksum all verified by disasm round-trip. IAT: CreateFileW
0x443b58, WriteFile 0x443b98, CloseHandle 0x443b64 (CreateFileA absent → W used).
- spy_PAD / spy_ID: modified capsule → validation fails → 214, never flashes
  (three independent gates: validation, SameVersionPolicy=2, original INI).
- spy_PRISTINE: pristine capsule → validation PASSES (flags==0 reference) →
  same-version gate refuses ("no need to update"), never flashes.
Each MF1305 call appends one 22-byte response packet to ec_spy.log in the CWD.
Next step: user runs all three, sends back the three logs → learn the 6+6 identity
bytes + flags semantics → deduce GetVersion's image offset → header algorithm.

## §12 EC-side validator hunt CLOSED (2026-10-21, ec_validate + ec_30000 review)

Full decompile review of every candidate site — ALL false positives:
- ec_validate.txt (9 sites): 0x18378 cmd sender (the 8d a8 @0x18383 is an
  instruction-operand fragment; function has no checksum math — 2-byte chance
  match, expected ~3 random hits/image); 0x377e sensor/ADC read; 0xdc04 flash
  reg writer (0xff0d00); 0xfe06 matrix handler; 0x16b76 '$'-cmd UART update
  state machine (incl. case 10 flash-write trigger — receiver, not validator);
  0x185a4 2-byte complement handshake; 0x1c240 KBC port writer; 0x254f0 matrix
  timing; 0x644c LED/flag logic.
- ec_30000.txt (14 sites w/ 0x30000/0x20000 immeds): 0x106d6-0x10970 LP-loop
  aux-register interrupt handlers; 0x77a8 packet sender; 0x16a58 peripheral
  writer; 0x23926 poll loop; 0x2600c main event loop (one 0x20000 = status bit
  test); 0x1d9f4 charger poll; 0x28eee/0x2a6da Ghidra misread DATA tables
  (powers-of-2 masks, pointer table) as code.
- No code references $AMIEC (only the header itself @0x200). No 0x30800 bound
  anywhere. 0x30000-0x307FF is erased-FF padding; code+data end at 0x2B452.
CONCLUSION: EC image contains NO image-validation code at all. Validate() runs
entirely SMM-side (PcOemEcUpdateSmm.efi via runtime iface). Cracking it requires
the spy round-trip (§11) or SMM-module disasm of the provider.

## §13 CRC CRACKED + flash tools built & verified (2026-10-21)

### Validate algorithm (PcOemEc_sib4.efi fn @0xb1c)
  crc = 0x00FFFF00
  for i in 0..len:
      if 0x200 <= i <= 0x27F: continue        # header+skip region excluded
      crc |= img[i]
      8x: crc <<= 1; if crc & 0x1000000: crc ^= 0x01102100
  return (crc >> 8) & 0xFFFF == *(u16*)(img + 0x218)
Byte-table form (0.06 s/run): s = crc>>8 (16-bit); s' = A[s>>8]^B[s&0xFF]^C[b];
s init 0xFFFF. A/B/C = _round8() on basis values, _round8 = 8x shift/xor loop.
Verified 3/3 on independent firmwares: L17 stored 0x73FD, L19 stored 0x0473,
SZ6-L16 stored 0xC513 — all reproduce exactly.

### Secondary invariant (3/3): sum(ALL image bytes) & 0xFFFF == u16 @ 0x20A
(L19 = 0xA88D). Unmaintained it drifts when bytes change; fixed via:
- fine knob: skip region 0x21C-0x27F (100 bytes, any reduction 0..25500 exact,
  ZERO CRC impact); one byte 0x21C changed 0xFF -> 0x97 for the diag image.
- coarse knob: CRC-region 0x30100+ padding (never needed for diag).

### Full gating chain (all gates now passable)
tag $AMIEC @0x200 + 0x43 @0x20D (consumer) -> Validate CRC (sib4 @0xb1c)
-> identity compare image[0x210..0x215] vs EC regs 0xF8-0xFD + version byte
0x213 vs EC 0xFB (SameVersionPolicy/DowngradePolicy from INI) -> commit.

### Tools (all end-to-end verified offline: resource 3003 extracted from the
built .exe -> LZNT1-decompressed -> crc24 == stored @0x218, sum == u16 @0x20A,
tag + identity bytes == pristine, version 0x19)
- analysis/EcUpdate_diag.exe (473600 B, chksum 0x0007C021): diag image = 289
  diffs vs pristine; 4 collapsed '=' chain positions {32,60,160,188} report
  F1-F4; SameVersionPolicy=0 (INI obfuscated-match verified).
- analysis/EcUpdate_restore_L19.exe (473600 B, chksum 0x0007633E): rollback,
  image byte-identical to pristine L19; SameVersionPolicy=0 (original updater
  refuses same-version flash).
- analysis/ec_firmware_diag_crc.img / ec_firmware_diag_nocrc.img (backup).
- spy exes (§11) now superseded by the static crack; kept as diagnostics.

## §14 Updater runtime flow — PE reboot failure root-caused (2026-10-21)

Static trace of pristine updater (pfw_extract/EcUpdate_SZ5M123_V100L19.exe,
imagebase 0x400000; all VAs below are imagebase-relative):

- **The updater REQUIRES Windows PE.** Resource string: "Embedded Controller
  Update must be executed on Windows PE." Full Windows is a refused
  environment → reinstalling Windows is the WRONG recovery path.
- Main flow fn 0x408300: PE detection + logging ([PE]/x86/Windows ver/UEFI vs
  Legacy via GetFirmwareEnvironmentVariableW, GUID {0000...0}), INI-policy
  state machine (policies 7/0x28/0x34/0x36 from [Settings] table at
  0x4466f8, 0x14-byte entries), SMM protocol family over exchanger core
  0x414250: 0x4174F0=MF1305 (Validate+GetVersion, 0x16B req/resp), 0x4175B0=
  MF1306, 0x4176A0=MF1307, plus 0x417630/0x4170a0 variants. Driver path:
  0x4158a0 -> if [obj+0x9c]==2 -> 0x4010F0 (CreateFile+DeviceIoControl to
  Panasonic device).
- Success tail: [0x44884c]==6 -> log "Firmware update continues in BIOS." +
  "System will going to reboot." then reboot-launcher 0x4137D0(ecx=1);
  !=6 -> "System will going to shutdown once and wakes up automatically."
  (ecx=0). [0x4487ec]!=0 -> "No need to update firmware, but reboot Windows."
- Reboot fn 0x4136E0: enables SeShutdownPrivilege then ExitWindowsEx(6=
  EWX_REBOOT|EWX_FORCE / 0xD=EWX_POWEROFF|EWX_FORCE). Failure -> log
  "Failed to shutdown Windows". **WinPE blocks/denies ExitWindowsEx.**
- Reboot launcher 0x4137D0: if %SystemDir%\wpeutil.exe exists -> ShellExecuteW
  ("wpeutil.exe reboot|shutdown"); else -> ExitWindowsEx path. Failure ->
  log "Failed to run wpeutil.exe, code = %u".
- 0x412b50/0x412be0 are LOG writers (not MessageBox): everything above lands
  in **EcUpdate.log** next to the exe ("Failed to initialize Logging" if the
  log can't be created). The user-visible UI is the dialog from resources.
- 2026-10-21 PE run: reached "will reboot" stage (validation+flow OK in PE),
  no reboot happened. Best-fit hypothesis: final dialog needed an OK click to
  proceed to staging, OR wpeutil.exe missing/blocked in the custom PE so the
  reboot call silently failed (log-only). Manual reboot afterwards showed no
  BIOS-side update -> staging had not been committed.
- NEXT: rerun in PE, click through dialogs, then capture EcUpdate.log.

## §15 Diag flash #1: observed outputs CONTRADICT the flashed image (2026-10-22)

User test (keyd, diag firmware active): RAlt-pos→','(0x41), Home/End-pos→F5(0x03),
Backslash-pos→dead, '='-pos→'='. Stock (keycode file, set-1 domain): RAlt/HomeEnd/
Backslash-pos keys ALL → 0x0D ('='); '='-pos → '='.

Verified facts: machine dump ec_firmware.bin == pristine L19 **byte-for-byte** (0 diffs,
E table identical). Flashed image = pristine + site/cave/E-table patches (diff regions
0x10DAC, 0x286AC, 0x29423-3F, 0x2969C-area, 0x30706+). Pipeline (§1, Ghidra-verified):
raw@[0x800B70+slot] → &0x7F (site 0x10DAC + fn_123A4 0x123B2 double mask) → E[0x2969C]
→ conversions → <0x80 fn_165B8 raw send / ≥0x80 slot handlers. Diag cave = lsr r0,r0,1.

CONTRADICTION: stock '=' requires E-index ∈ {32 (0x96→gp[-0xd8]=0x55), 60 (0x55)} →
raw ∈ {32,60,160,188} → diag index (raw>>1) ∈ {16,30,80,94} → diag E = {0x07,0x0F,
0x17,0x1F} → wires {F12, passthrough-0x0F, 0x17, 0x1F} — CANNOT produce {0x41,0x03,dead,
0x55} (no E entry or conversion path yields 0x41-at-those-indices; 0x03 has NO source
anywhere in the diag E/conversion tables). Also diag sum-knobs E[0]=0x55/E[47]=0x00/
E[61]=0x8F/E[62]=0x5D sit at indices that would require raw {0,1,94,95,122,124,125} —
none compatible with stock '=' at {32,60,160,188}.

CONCLUSION: the EC as it sits is NOT faithfully running ec_firmware_diag_crc.img.
Prime suspect: the PE flash sequence (failed auto-reboot, manual reboots) — the
boot-time BIOS EC write may have been interrupted/partial, leaving a corrupt image
(keys broadly work = code intact; table region scrambled = corruption).
NOTE: diag sum-knobs zeroed CT2[31] (fw[0x2943F] 0x55→0x00); if gp[-0xd8] init reads
CT2[31], the 0x96-remap target became 0x00 (design accepted this risk for the raw-32
'=' channel only).

RECOVERY PLAN: (1) 3-anchor probe on current state (Q, Enter, F1 — predictions under
true diag image: Q→dead/PgUp, Enter→dead/'s', F1→likely still F1 if F-keys are Path-2);
(2) clean reflash of EcUpdate_diag.exe from PE — DO NOT interrupt the boot-time EC
update (black screen minutes, auto-reboot ×2); (3) re-test 4 keys — expect F12/Tab/i/s
or distinct identifiable keys per position; (4) if still wrong: flash
EcUpdate_restore_L19.exe to validate the channel with known-good bytes (keyboard must
return to 100% stock), then re-diagnose.

## §16 Diag state decoded — 8 broken keys, 5 already locatable from stock (2026-10-22)

CORRECTED interpretation: keycode file = STOCK EC era; diag-out = post-diag. Under diag
ALL keys are scrambled by design (lsr): Q/A/Z/1/Enter/F1 remap too. User confirms:
8 keys must output their printed labels: RALT, MENU, INS, DEL, HOME/END, BACKSLASH,
PRTSC, PAUSE (the '=' key itself is already correct).

STOCK wires (keycode file, set-1 domain) → E entries (§2-verified pipeline):
- RALT/HOME-END/BS keys: 0x0D ('=') — p&0x7F ∈ {32 (E=0x96→gp[-0xd8]=0x55), 60 (E=0x55)}
  → p ∈ {32,60,160,188}, mutually indistinguishable in stock → diag must split them
- MENU: 0x70 → E[8]=0xE9→CT1 → p ∈ {8,136}   (want E0 2F menu: v1 patch E[8]→B6 slot24)
- INS: E0 5D (Menu!) → E[120]=0xB6 slot24 → p ∈ {120,248}  (want E0 70: E[120]→8A slot12)
- DEL: 0x73 → E[105]=0xE4→CT1 → p ∈ {105,233} (want E0 53: E[105]→8D slot15→nav 71)
- PRTSC: E0 52 (Insert) → E[124]=0xD2 pB→slot12 nav70 → p ∈ {124,252} (want PrtSc E0 12
  E0 7C: E[124]→88 slot9)
- PAUSE: E0 53 (Delete) → E[56]=0xD9 pB→slot15 nav71 → p ∈ {56,184} (want E1 14 77:
  E[56]→89 slot2)

CONSTRAINTS: RAlt wire E0 11 NOT producible (nav table has no 0x11; no handler) →
closest LAlt 0x11 direct (modifier special-case) or other function. Home/End key:
Home=E0 6C←E=8B slot13 / End=E0 69←E=8E slot16.

Diag predictions under faithful image (p_diag=(p>>1)&0x7F): Q→dead|PgUp, Enter→dead|'s',
MENU→'`|q', INS→'=|PrtSc', DEL→'3|r', PRTSC→'\'|PgDn, PAUSE→dead|RMeta.

INCONSISTENCY in user's 4-key diag data: RALT-key diag ',' (E[9]→p∈{18,19}) contradicts
its stock '=' (needs p∈{32,60,160,188}). No p satisfies both → either those 4 keys were
re-pressed in a different state, or wrong exe was flashed. PENDING: clean reflash +
full 11-key probe (predictions above) to validate image faithfulness, then split the
3 '=' keys by their diag outputs.

## §17 SOLVED: the diag data decodes completely — stock file was from the OLD (JIS) keyboard (2026-10-22)

HEX-discipline rerun: E idx 0x73=115 (space, E=0x29), 0x74/0x75=116/117 (Menu), 0x0C/0x0D (Del),
0x78=120 (Ins), 0x7C=124 (PrtSc), 0x7E=126 (Pause), 0x0A/0x0B (RCtrl), 0x12/0x13 (RAlt),
0x36/0x37 (Home/End), 0x50/0x51 (= key), Q@0x44, A@0x54, 1@0x43, F1@0x05, Enter@0x5E.

MODEL (all 14 observations consistent): E=0xFF → key dropped BEFORE conversion (no CT1'[FF]=0x79);
diag idx = (raw>>1)&0x7F; diag image knobs confirmed == file bytes (E[0]=55,16=07,30=0F,47=00,
61=8F,62=5D,80=17,94=1F). Six keys land on PRISTINE entries (E[5]=D3→T7128[26]=05 f1,
E[6]=32 'b', E[9]=41 ',', E[27]=D7→T7128[2E]=03 f5, E[39..3A]=45 '0' 【错：E[0x39]实为0xE5→CT2'→'o'，见§18】, E[40]=E7→CT1'[E7]=75
kpequal) — cannot be coincidence.

**The stock-era `keycode` file described the ORIGINAL JIS keyboard's matrix, NOT the current
Taobao board.** That is why stock and diag could never be reconciled: two keyboards, one EC.
Original "4 keys type '='" complaint = JIS board. All stock-based conclusions in §2/§3 are
VOID for the current board except the three joint-confirmed raws (120/124/126).

CURRENT-BOARD state (stock L19): Menu@116/117→garbage(13/1B), Del@12/13→garbage(51/C2-path),
RCtrl@10/11→DEAD(97)/E0 14 — RCtrl is ALSO broken on this board (never noticed: RCtrl rarely
used, and the 8-key list came from the JIS-board data), RAlt@18/19→dead/0x64, Home/End@54/55→
'a'/'v', EQ@80/81→DEAD — the '=' key is ALSO broken on this board (diag shows kpequal!), =@80/81,
Backslash→UNLOCATED (dead under diag; any of ~40 FF idxs).

FINAL-PATCH raw pairs (patch BOTH parities; siblings verified unused — their stock wires
would've been visible duplicates/garbage the user never reported): E[10,11]→RCtrl(needs
E0 1D path — NO E value produces it yet; T2 gates under disassembly), E[12,13]→0x8D (Delete),
E[18,19]→0x11 (LAlt, user choice), E[54,55]→0x8B (Home), E[80,81]→0x55 ('='), E[116,117]→0xB6
(Menu), E[120]→0x8A (Insert), E[124]→0x88 (PrtSc), E[126]→0x89 (Pause), Backslash pair→0x5D
PENDING diag2 probe (E[FF-idx]=idx self-markers; user presses Backslash only).

User decisions: RAlt key → LeftAlt (0x11; true E0 11 exists via slot 3 = fn_18080 make 16148(0x11)
but user chose LAlt), Home/End key → Home (E=8B slot13); Fn+key=End pending feasibility
(E table is static, needs Fn-layer hook — investigate Path-2/fn_100AC later).

diag2 design: pristine-E + same lsr site/cave + E[i]=i for the 38 remaining FF idxs
(01,02,0E,0F,11,12,1B,1E,1F,21,22,2B,2D,31,32,33,3B,40,41,42,4B,4D,4E,4F,51,52,5D,5F,60,61,
6B,6F,70,72,76,7B,7F) so every currently-dead key self-reports its idx as the wire byte.

## §18 CORRECTED: space='o' fully explained — CT1'/CT2' is a PER-KEY choice (2026-10-22)

User RE-VERIFIED: under diag, SPACE really outputs letter 'o' (IME popup proves it; keyd
agrees). This REFUTES §17's "terminal 0/o confusion" dismissal. Root cause of the mistake:
§17's E-table reading "E[39..3A]=45" was WRONG — hex-disciplined re-read of the actual bytes:

  E[0x39] = 0xE5  (NOT 0x45)        E[0x3A] = 0x45

Both >=0xE0 codes take the CT gate in fn_123A4, but WHICH table (CT1' vs CT2') is selected
PER-KEY by the slot's flags byte [r13,0x1a] (+gp[-0xe4]/gp[-0xd6]/RAM[0x8004b9] checks,
disasm 0x123D2-0x123F0): EQ's slot selects CT1'[0xE7]=0x75 -> kpequal; space's slot selects
CT2'[0xE5]=fw[0x29425]=0x44 -> set-1 0x18='o'. MENU lands on E[0x3A]=0x45 -> '0' (separate
idx, untouched). Every one of the 15 observations now follows from the flashed image
byte-exact. The flashed image == ec_firmware_diag_crc.img; NO corruption, NO unknown path.
Also the "knob indices" in §17 were decimal-printed-as-hex AGAIN; true knob idxs:
0x00,0x10,0x1E,0x2F,0x3D,0x3E,0x50,0x5E.

CT tables are FULL-CODE-INDEXED 256-byte arrays: CT1'[code]=fw[0x29320+code] (E0-FF half at
0x29400-0x2941F), CT2'[code]=fw[0x29340+code] (E0-FF half at 0x29420-0x2943F — bytes
"3b 42 4b 3c 43 44 3d 3e ..." i.e. an ASCII-ish region doubling as the table).

SPACE IS NOT BROKEN: stock idx = raw&0x7F = 0x73 -> E[0x73]=0x29 -> space OK (diag's lsr
moved it to idx 0x39 which coincidentally maps through CT2' to 'o'). Broken-key list stays
at 10 (9 located + Backslash unlocated).

RCtrl SOLVED: SLOT[0x86]=0x04 -> T1[4]=0x18138 -> make 16148(0x14)=E0 14 -> 8042 -> E0 1D =
TRUE Right Ctrl. Final value E[pair]=0x86 (0x18138 disasm confirmed in t1.txt).
SLOT[0x87]=0x03 -> T1[3]=0x18080 -> E0 11 = true RAlt (kept as the declined alternative).

FINAL-PATCH list (pristine L19 base, stock code — no cave; patch BOTH parities everywhere;
all values <0xE0 so CT1'/CT2' selection is IRRELEVANT for every target):
  E[0x0A]=E[0x0B]=0x86  RCtrl   E[0x0C]=E[0x0D]=0x8D  Del     E[0x12]=E[0x13]=0x11  LAlt(user)
  E[0x36]=E[0x37]=0x8B  Home    E[0x50]=E[0x51]=0x55  '='     E[0x74]=E[0x75]=0xB6  Menu
  E[0x78]=E[0x79]=0x8A  Ins     E[0x7C]=E[0x7D]=0x88  PrtSc   E[0x7E]=E[0x7F]=0x89  Pause
  E[Backslash pair]=0x5D  PENDING diag2 probe (E[FF idxs]=idx self-markers, same proven
  lsr cave at 0x30706, site bl @0x10DAC; parity cave NOT needed — both-parity patching
  absorbs the unknown). raw = 2*diag_idx+p holds while raw<0x80 (all located keys are;
  diag idx <0x40 for every observed key, incl. space 0x39).


## 19. Backslash 定位 + 最终固件构建（2026-10-22）

### diag2 探针结果
用户刷入 diag2 后按 Backslash 键输出字母 **'o'**。'o' = set-1 0x18 ← set-2 0x44，
而 0x44 正是 MARKERS 写在 diag idx **0x1F** 上的标记值（全表唯一）。
⇒ Backslash 的 (raw>>1)&0x7F = 0x1F，原始 raw ∈ {0x3E, 0x3F}。

### 奇偶位之争 —— 0x3F 是活的左 Shift！（关键）
pristine E[0x3E] = **0xFF**（JIS 上空位），pristine E[0x3F] = **0x12**（set-2 左 Shift）。
- JIS 键盘左 Shift 在矩阵 raw 0x3F；英文键盘左 Shift 同位置（两键盘共用）。
- 英文键盘多出来的 Backslash 键落在 JIS 留空的 **0x3E**。
- ⇒ **单点补丁 E[0x3E]=0x5D；0x3F 必须保持 0x12**。若按其他键的惯例补成对，
  左 Shift 会被打成 '\'。
- 推论：diag/diag2 下左 Shift 与 Backslash 撞在同一 idx 0x1F（diag1 同死、
  diag2 同出 'o'），属探针固件预期行为；最终固件恢复 Shift。
- 原厂 EC 下英文键盘的 Backslash 是**死键**（0x3E → E=0xFF → fn_123A4 丢弃）。
  用户记忆中的「原厂能打 =」只能来自 JIS 键盘时代（该物理位置在 JIS 上打出 '='）。
  §17 的"矛盾论证"（stock '=' → idx 0x3C）作废；以本节为准。

### 旁证：RCtrl 槽模型
pristine E[0x0B] = 0x86 —— JIS 自己的右 Ctrl 就在 0x0B，且用的正是 slot4(0x86)。
最终补丁里 0x0B 本就是 no-op（写 0x86 覆盖 0x86），又一次印证 E→slot→T1 全链。

### 最终固件（ec_firmware_final.img / EcUpdate_final.exe）
- 基线 pristine L19，代码零改动；E 表 19 个目标值全部到位（18 改 + 0x0B 原样）。
- CRC stored 0xAD4D == crc24 计算值；sum 0xA88D == u16@0x20A；deficit 0xA758。
- 全图 diff 仅落在 E 表 + 0x218 + 0x21C-0x27F + 0x2B453-0x307FF 填充区，无一越界；
  头区 0x200-0x217 与 pristine 逐字节一致。
- exe 内嵌 capsule LZNT1 解压 == final.img 逐字节；INI blob 与 diag2（真机已验证）
  逐字节一致（0x48028, 69 字节, SameVersionPolicy=0）。
- build_final.py 已加固：assert k==0x1F 且兄弟位 pristine==0x12，禁止对其他 diag idx
  盲目补成对。

### 兄弟位风险清单（pristine E 值）
- JIS 空位（安全）：0x12(LAlt主位)、0x3E(Backslash)、0x50/0x51(=)、0x7F(Pause奇)。
- JIS 有键、英文无键（成对补丁已接受的牺牲）：0x0D、0x13、0x37、0x75、0x79、0x7D。
- 双键盘都有键：0x0B（本就是 RCtrl，no-op）、**0x3F（左 Shift —— 已绕开）**。


## 20. v1 上机回访 + v2 修正（2026-10-22）

### v1 问题定位法（重要方法论）
用户按物理顺序全键扫一遍（keyd monitor），凡**同一输出码出现两次**的位置，
必有一个是 v1 成对补丁误伤的原厂好键（我们把同一功能码写进了奇偶两个槽位）：

| v1 输出 | 受害原厂键 | raw | pristine E |
|---|---|---|---|
| home | '5' / F6 | 0x36 / 0x37 | 0x2E / 0xD8 |
| compose | 's' | 0x75 | 0x1B |
| insert | '.' | 0x79 | 0xEA |
| delete(2nd) | <- 箭头 | 0x0D | 0xC2 |
| sysrq(2nd) | -> 箭头 | 0x7D | 0xC5 |
| '='(右Shift旁) | Home/End 真身 | 0x51 | FF（原厂死键✓投诉吻合） |

### 根因
diag 的 raw>>1 把奇偶位折叠成同一 idx， scrambled 状态下人工对号时 '5'/'s'/'.'
的 raw 被张冠李戴成 Home/End、Menu、Ins；v1 按"diag idx→成对补丁"直接把六个
原厂正常键覆盖。**教训：成对补丁之前必须用 pristine E 反查兄弟位是否活键。**

### v2（EcUpdate_final2.exe，已构建+全验证）
12 处真实改动 + 5 处显式恢复（=pristine，no-op）+ Backslash 单点 0x3E。
E diff 全图受限、CRC 0x405A ✓、sum 0xA88D ✓、capsule/INI 与已验证模板一致 ✓。

### 遗留
- 0x0B（L 与 ' 之间）出 RCtrl：pristine 本来就是 0x86 → 原厂行为即如此。
  等用户报告键帽标注；若应为 ';'，v3 改 0x0B=0x4C。
- F5 单独按无声：与原厂一致（未触碰的 FF 位），疑似 Panasonic Fn 层门控，
  Fn+F5 应可用；要原生 F5 需另挖 Fn 层（fn_100AC）。
- 方向键簇布局已推定：Del 右邻=RCtrl(0x0A)，←=0x0D，→=0x7D，Ins=0x78。

## §21 v3 构建与验证 + 仓库整理（2026-10-22）

### v3 相对 v2 的两处改动（用户报告驱动）
- **E[0x0B]=0x4C (';')**：v2 用户确认 "L和'直接的是;"——0x0B 的键帽就是分号，
  pristine 0x86(RCtrl) 是原厂即错。
- **E[0x28]=0x8B (Home)**：Home/End 键真身在 0x28。pristine 0xE7 → CT1' → kpequal，
  在终端里输出 '='——这正是 v1/v2 "home/end 还是 =" 投诉的来源（不是 EQ 键，是
  Home/End 键自己）。v2 在 0x51 的 Home 已回退为 FF：0x51 是空位，放 Home 会埋下
  EQ 奇偶交替的隐患。

### v3 验证（构建时全过）
- 13 处 E diff == 意图（4 处恢复 + 0x51 回退保持 pristine；0x3F LShift 完好）。
- diff 全部限定在允许区（E 表 + 0x218 + 0x21C-0x27F + 0xFF 填充池）。
- CRC=0x3F06 ✓，sum=0xA88D ✓；exe 内胶囊 LZNT1 往返 == 镜像；INI blob 与
  diag2 已实机验证的 blob 逐字节一致。
- 回归基线（重构后脚本重出，逐字节相同）：
  EcUpdate_final3.exe  = 2284097c…6915
  ec_firmware_final3.img = 8e3e5c80…5c4a
  ec_capsule_final3.bin = b3ca9446…dc4f

### 待实机确认（v3 刷后）
- ';' (0x0B) 正确；Home/End 键 → Home (0x28)；
- Fn+Home/End 是否白送 End（Fn 层 fn_100AC 未动，跟位置默认走）；
- 若 Home/End 仍不对，抓 keyd 原始行。

### 仓库整理（开源发布准备）
- scripts/ 工具链统一走 sz5env（SZ5_WORK / SZ5_UPDATER 环境变量），
  ecu_crc 表改为现算（标准 CRC-32 MSB poly 0x04C11DB7，与 updater 内嵌表
  逐字节一致，已验证），去掉全部二进制文件依赖。
- 一次性探索脚本收进 scripts/exploration/；Ghidra runner 参数化
  （run-headless.ps1）；早期交接笔记移入 docs/archive/ 并加"有已知错误"声明。
- 版权红线入 .gitignore：任何 *.bin/*.img/*.exe/*.rom 等不入 git；
  analysis/ 整个目录留在本地。git 树里只有脚本、文档、文本产物、键盘照片。

## §22 v3 实机结果 + v4（2026-10-22 晚）

### v3 刷后用户报告
';' 仍出 RCtrl；Home/End 仍出 '='；**新增**：数字 8 出 Home、RCtrl 出 ';'。

### 定位（v3 本身是完美的诊断探针）
- **0x0A/0x0B 补反了**：v3 把 E[0x0A]=0x86、E[0x0B]=0x4C，结果 RCtrl 出 ';'、
  ';' 键还出 RCtrl → raw 0x0A = ';' 键、raw 0x0B = RCtrl。
  v2 里 RCtrl"正常"是因为 stock E[0x0B] 本来就是 0x86——歪打正着。
- **0x28 是数字 8 键**：pristine 0xE7 = KP8。NumLock 开 → '8'（v2"正常"的假象），
  v3 改成 Home 后裸按出 Home。0xE7 唯一的 kpequal 输出是 NumLock 关时的 KP8，
  不是 '='。
- **Home/End 键 = raw 0x3C**：pristine E[0x3C]=0x55 → 8042 set-2→set-1 →
  **0x0D '='**——全 E 表唯一出 '=' 的项，与"stock 到现在一直出 '='"吻合。
  兄弟位 0x3D=FF（空，单奇偶安全）。

### v4 补丁（12 处真实改动 + 7 处显式恢复）
E[0x0A]=0x4C ';'；E[0x0B]=0x86 RCtrl（恢复 stock）；E[0x28]=0xE7（恢复 KP8）；
E[0x3C]=0x8B Home；其余同 v3。

### v4 验证
E diff == 意图、限定区域、header pristine、CRC=0xE228、sum=0xA88D、
exe 胶囊往返 == 镜像、INI blob 69B、0x3D=FF / 0x3F=LShift 完好。ALL CHECKS PASS。
基线 SHA256：exe ddf847a2…3c94 / img bfab92c4…d52b / cap fdf2b5ea…52c4。

### 待实机确认
';'、Home/End→Home、数字 8→'8'（NumLock 开）、RCtrl；Fn+Home/End（Fn 层未动，
可能白送 End）；全键复扫。

## §23 v4 实机结果 + v5（2026-10-22 深夜）

### v4 刷后用户报告
"现在 = 是 home（Fn 也是 home）。home 还是 =，倒是按住 fn 会变 kpplus。"

### 定位——§22 的推理错误
- **EQ 键 raw = 0x3C**：v4 把 Home 线放到 0x3C 后，`=` 键立刻出 Home → 0x3C 是
  EQ 键。stock 0x55 本来就是对的——`=` 键从 stock 起一直是好的。
- **Home/End 键 raw = 0x50**：v4 的 E[0x50]=0x55（v1 就放进的补丁）让它继续出
  `=`。**从 v1 起所有 "home 出 =" 的报告都来自我们自己的补丁**，不是 pristine。
  stock 下 Home/End 键是死的（FF）——正是最初坏键清单里的那个。
- §22 的教训：用户报告"某键出 Y"时，Y 可能来自我们自己上一版的补丁，
  先问"stock 下这个键是什么表现"再归因。pristine 里唯一出 '=' 的 0x3C
  恰恰是本来就正常的 EQ 键，不是 Home/End。
- Fn+Home/End = KP+：JIS Fn 层该位置的默认映射（fn_100AC 未动），符合预期。
  想要 Fn+Home/End=End 需要动 Fn 层，仍挂起。

### v5 补丁（11 处真实改动 + 8 处显式恢复）
E[0x3C]=0x55（恢复 EQ）；E[0x50]=0x8B（Home，Home/End 键，兄弟 0x51=FF 空）。

### v5 验证
E diff == 意图、限定区域、header pristine、CRC=0x0810、sum=0xA88D、
exe 胶囊往返 == 镜像、0x3D/0x51=FF、0x3F=LShift 完好。ALL CHECKS PASS。
基线 SHA256：exe 32369746…4de3 / img 7a5e3695…e257 / cap 639c8857…c5fa。

### 待实机确认
Home/End 键 → Home；`=` 键 → '='；Fn+Home/End=KP+（JIS 默认，接受或挂起）；
全键复扫。
