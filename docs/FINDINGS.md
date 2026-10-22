# CF-SZ5 EC 键盘固件逆向（定案）

根因：**CF-SZ5 仅在日本销售，EC 固件只含 JIS 键盘矩阵映射**。更换英文键盘后，
右侧若干按键闭合的矩阵交叉点在 JIS 映射表里对应别的键（或空位），固件如实上报。
修复方式：改 E 表等数据表，让交叉点指向英文键盘键帽对应的码。
全部机制经 Ghidra SLEIGH 反编译验证，补丁经实机全键验证。

## 1. 按键事件管线

```
矩阵扫描 → RAM 0x800B70[slot] = raw 索引
  → h3_10D7C(event, slot)
    → h3_123A4(raw & 0x7F):
        code = E[raw]                        @0x2969C，128 字节 set-2 码表（0xFF = 空）
        func_1F0AC: raw==gp[-0xd8] 时替换为 0x96（Fn 运行时重映射）
        E < 0xC0 ：原样通过（直连线）
        E ∈ [0xC0,0xE0)：T7128 双字节表（见 §2）
        E ≥ 0xE0   ：CT 门，查 CT1' 或 CT2'（见 §3）
        func_207BC(code)：0x89/0xB2 仅作"不重发"标记，其余放行
    → 分发：code < 0x80 直接发送
            code ≥ 0x80：slot = fw[0x2931C+code]（须 ≤0x24）
                     先调 T2[slot](code, event)，返回非 0 再调 T1[slot](event)
  → 发送：8042 把 set-2 翻成 set-1 上报系统
```

发送原语：`1613C(x)`=发 x；`16148(x)`=发 E0 x；`055BC(x)`=发 F0 x；`055D4(x)`=发 E0 F0 x。

## 2. T7128 表（@0x2971C，64 字节）：[普通按， Fn+按] 成对落点表

E ∈ [0xC0,0xE0) 时：`idx = E*2 - 0x180`（偶数项，普通）或 `E*2 - 0x17F`（奇数项）。
选奇数项的条件：**(键状态字节 RAM[0x800b7a+idx] & 2) == 2，或 Fn 按住**
（全局标志 gp[-0xe4]&0x20）。普通非修饰键的状态字节 bit1=0，所以普通按恒走偶数项、
Fn+按恒走奇数项——**想给某个键独立设定"普通按 X、Fn+按 Y"，把它指到一对
stock 未使用的 E 码再改这一对表项即可**（本项目用死码 E=0xCA 实现
Home/End 键：普通=Home、Fn=End）。T7128 是纯数据表，可安全改写。

## 3. CT 门（E ≥ 0xE0）：NumLock 小键盘层

- 表：CT1'[code] = fw[0x29320+code]（E0-FF 半区 @0x29400），
  CT2'[code] = fw[0x29340+code]（E0-FF 半区 @0x29420，typing 层）。
- 选表（h3_123A4 0x123D2-0x123F0 反汇编）：
  - 条件 A（状态字节 bit1=1，或 Fn 按住）：
    CT1'（小键盘层）⟸ `(gp[-0xd6]&2)==0 || NumLock`
  - 条件 B（普通键）：CT1' ⟸ `(gp[-0xd6]&2)!=0 && NumLock==0`（即取反）
  - NumLock = RAM 0x8004b9 的 bit0。实测 gp[-0xd6]=0x01。
- 特例：E=0xFF 的键也过 CT 门。CT1'[0xFF]=0x79（丢弃），**CT2'[0xFF]=0x55 '='**——
  踩 CT2 槽的空位键会打出 '='，这就是"空位键出 '='"的来源。
- **Fn ≡ CT 键的 class-A 强制**：对 CT 键，按住 Fn 的效果和 NumLock 翻转相同，
  二者逐键不可分。要杀掉"Fn+某键 = kp 某某"而又保留 NumLock 行为，
  只能把该键的 E 值改成 <0xE0 的直连线（绕过 CT 门），代价是失去小键盘层
  （本项目对 `-` `'` `[` 三个键如此取舍；`;` `0` `P` 三键需要小键盘层，保留 CT）。

## 4. slot 处理函数表（⚠️ 含红线）

- slot 索引表：fw[0x2931C+wire]。
- T1 表 @0x29778、T2 表 @0x297DC，各 25 项（slot 0-0x24），4 字节 LE 函数指针。
- 常用 slot：0=原样发送， 2=Pause(E1 14 77), 5=Break, 9=PrtSc(E0 12 E0 7C),
  12-24=E0 导航族（nav 码表 @0x293D0：12=Ins 13=Home 14=PgUp 15=Del 16=End 17=PgDn
  18=← 19=→ 1A=↓ 1B=↑ 22=Win 类 23/24=App/Menu 类）。
- 常用线码：0x8B→slot13(Home)、0x8E→slot16(End)、0x8D→slot15(Del)、
  0x8A→slot12(Ins)、0x88→slot9(PrtSc)、0x89→slot2(Pause)、0xB6→slot24(Menu)、
  0x86→slot4(真 RCtrl, E0 14→E0 1D)、0x87→slot3(真 RAlt, E0 11)、
  0x11→LAlt（<0x80 直连）。
- **红线：fw[0x29764+idx] 作为"fn flags 表"只对 idx<0x14 真实存在；0x29778 起
  就是上面的 T1 指针表。对 idx≥0x14 写 flags 字节 = 写函数指针 = EC 崩溃、
  整机键盘失效（本项目实测过）。唯一可安全写入的 fw 数据区：
  E 表（0x2969C-0x2971B）、T7128 表体（0x2971C-0x2975B）、
  以及逐字节核实过的单个代码字节。**

## 5. Fn 键与 Fn 层

- E=0x96 是 Fn 特殊码（h3_123A4 对 0x96 有专门分支）；Fn 按住置 gp[-0xe4]&0x20。
- fn 层（fn_1000c/fn_100ac，表 @0x29454/@0x29468/@0x29764）负责 Fn 组合码的第二
  发送路径，但受 §4 红线限制，对本项目的目标键不可用——Fn 组合一律走 §2 的
  T7128 路线实现。
- stock Fn 组合一览（英文键盘实测）：Fn+←=Home、Fn+→=End、Fn+↑/↓=翻页导航、
  F1-F12 各带 JIS 特殊组合（亮度/音量/SysRq 类）、Fn+Backspace=Ctrl+Alt+Del
  （见 §6）、Fn+CT 键=小键盘层翻转（见 §3）。

## 6. CAD latch（代码区，stock 行为）

h3_10D7C 尾部：Fn 按住 + 线码 0x66（Backspace）时置 gp[-0x95]，系统侧表现为
Ctrl+Alt+Del（JIS 矩阵配英文键盘时 Fn+Backspace 即触发）。这是代码里的
latch，任何数据表都没有对应项；关闭它只能改代码：
`fw[0x10EA0]: 0xE6 → 0xFF`（`cmp_s wire,0x66` → `cmp_s wire,0xFF`，永不命中；
流水线不会产生 0xFF 线码）。改前逐字节核对前后文指令边界。

## 7. 实机定位出的键位（英文键盘，探针法测定）

探针固件把空 E 位接上互不相同且肉眼可读的标记码，实机按键反推矩阵位置
（工具 scripts/build_diag2.py，方法学见 METHOD.md）。定案：

` ;`@0x0A · RCtrl@0x0B · Del@0x0C · ←@0x0D · LAlt/RAlt@0x12/0x13 · Fn@0x20 ·
'8'@0x28 · '5'@0x36 · F6@0x37 · '0'@0x3A · '='@0x3C · Backslash@0x3E（单奇偶，
兄弟 0x3F=LShift 必须保持 0x12）· '-'@0x2A · QUOTE@0x1C · '['@0x4C ·
'P'@0x4A · **Home/End@0x4E** · Backspace@0x6E · Ins@0x78 · Menu@0x74 · PrtSc@0x7C ·
→@0x7D · Pause@0x7E/0x7F · F8@0x48(F-类 E=0xDA) · F9@0x49(0xDB) · F10@0x59(0xDC) ·
F11@0x5A(0xD0) · F12@0x6A(0xD1)

Home/End 键是 pristine-FF 空位键（空位若踩 CT2 槽会出 '='，见 §3）。

## 8. 固件完整性校验（EC/SMM 两侧，修改后必须维持）

$AMIEC 标签 @0x200 + 0x43 @0x20D → **crc24** 校验：u16 @0x218 ==
CRC（init 0x00FFFF，跳过 0x200-0x27F，每字节 8 次 `<<=1; if bit24 ^= 0x01102100`，
取 crc>>8 低 16 位）→ 身份字节 image[0x210..0x215] 与 EC 寄存器比对 + 版本字节
0x213 与版本门（INI 的 SameVersionPolicy/DowngradePolicy）→ commit。
另有一个独立不变量：**全镜像字节和 & 0xFFFF == u16 @0x20A**（L19=0xA88D）。

修法（fix_crc_sum.py）：0x2B453-0x307FF 是无引用 0xFF 填充区，在其中调整个别
字节做微调（对 CRC 与字节和同时凑零；先用静态反汇编确认填充区无引用）。

## 9. 更新程序重打包与刷写

- 固件作为 PE 资源携带：resource 10/3003/1033 = 胶囊 `[u32 crc32(解压镜像)]
  [u32 未压缩大小][LZNT1 块]`；10/3000/1033 = INI（自定义混淆），
  把 `SameVersionPolicy` 改成 0 才能同版本反复刷写。
- 重打包（build_ecupdate2.py）：替换两个资源、清空证书表、裁剪 overlay、
  重算 PE checksum。胶囊压缩用 RtlCompressBuffer（LZNT1），往返解压逐字节校验。
- 刷写环境：**完整 Windows 实测多轮成功；VM/Wine 被拒**。更新程序内嵌的
  "must be executed on Windows PE" 字符串指的是 PE 映像格式检查，并非要求
  WinPE 预安装环境。刷完重启。
- 应急：刷后键盘异常时，EC 由电池供电——拔 AC、长按电源 30 秒复位，
  再刷原厂恢复包（build_restore.py）。

## 10. 最终补丁清单（详见 keymap-cf-sz5-en.md）

E 表 15 字节与 pristine 不同（补丁集另含 11 项显式恢复、恰为 stock 原值）+ 37 个空位统一接 Home 线 +
T7128 表 5 字节（Home/End 对 + F8/F11/F12 的 Fn 项=自身）+
代码 1 字节（0x10EA0，关 CAD latch）。补丁后 CRC/字节和自动修复于填充区，
头区 0x200-0x217 与 pristine 逐字节一致。构建、哈希、验证记录见
docs/worksheets/SHA256SUMS.txt 与 README「使用」。

## 11. 附注

- CF-SZ6 的 E 表与 CF-SZ5 **逐字节相同**（数据区整体 +0x108 偏移），同样只有
  JIS 映射——没有现成英文键表可抄，但本补丁思路可直接迁移。
- 矩阵解码表 @0x29100：16 记录 × 14 个 u16 图样。
- 移植方法学（探针法、奇偶陷阱、完整性不变量验证）见 [METHOD.md](METHOD.md)。
