# CF-SZ5 英文键盘最终键位表（v9.2，2026-10-23 实机全键验证通过）

固件偏移 **E_OFF = 0x2969C**（128 字节 set-2 码表），`stock` 为日版原始值。
最终固件 = pristine + 下方补丁（E 表 12 处 + T7128 表 5 处 + 代码 1 字节），
全部实机验证：**所有键与键帽一致，Fn 无多余效果**。

## E 表改动（相对 pristine；「毯覆」= 37 个 pristine-FF 空位统一接 Home 线 0x8B）

| E 索引 | stock | final | 按键 | 说明 |
|---|---|---|---|---|
| 0x0A | 0xEC | 0xEC | `;` | stock 即 CT 键（曾走直连 0x4C 的弯路（NumLock 失效），已恢复） |
| 0x0B | 0x86 | 0x86 | RCtrl | 恢复（stock 即对） |
| 0x0C | 0x51 | 0x8D | Delete | 0x8D → slot15 → Del |
| 0x0D | 0xC2 | 0xC2 | ← | 恢复（stock 即对） |
| 0x12 | 0xFF | 0x11 | LAlt | 原始为空；RAlt 物理键同经此位，按用户选择输出 LAlt |
| 0x13 | 0x64 | 0x11 | （JIS 专属位） | 英文键盘无此物理键 |
| 0x1C | 0xED | 0x52 | `'` | **直连**：stock 的 Fn+' = kpasterisk 随之消失 |
| 0x20 | 0x96 | 0x96 | Fn | 恢复（0x96 = Fn 特殊码） |
| 0x28 | 0xE7 | 0xE7 | 数字 8 | 恢复（= KP8：NumLock 开 '8' / 关 Home，stock 行为） |
| 0x2A | 0xF6 | 0x4E | `-` | **直连**：stock 的 Fn+- = kpminus 随之消失 |
| 0x36 | 0x2E | 0x2E | `5` | 恢复（stock 即正确） |
| 0x37 | 0xD8 | 0xD8 | F6 | 恢复（stock 即正确） |
| 0x3A | 0x45 | 0xEE | `0` | **CT**：NumLock 开 → KP*，关 → '0' |
| 0x3C | 0x55 | 0x55 | `=` | 恢复（stock 即对） |
| 0x3E | 0xFF | 0x5D | `\` | Backslash（单奇偶：兄弟 0x3F=LShift 不动） |
| 0x4A | 0x4D | 0xF0 | `P` | **CT**：NumLock 开 → KP-，关 → 'P' |
| 0x4C | 0xFB | 0x54 | `[` | **直连**：stock 的 Fn+[ = kpenter 随之消失 |
| 0x4E | 0xFF | 0xCA | **Home/End 键** | 指到 T7128 死对（见下）：普通按=Home，Fn+=End |
| 0x50 | 0xFF | 0xFF | （无活键） | 恢复（探针实验证明无活键） |
| 0x74 | 0x13 | 0xB6 | Menu | 0xB6 → slot24 → Menu |
| 0x75 | 0x1B | 0x1B | `s` | 恢复（stock 即正确） |
| 0x78 | 0xB6 | 0x8A | Insert | 0x8A → slot12 → Ins |
| 0x7C | 0xD2 | 0x88 | PrtSc | 0x88 → slot9 → E0 7C |
| 0x7D | 0xC5 | 0xC5 | → | 恢复（stock 即对） |
| 0x7E | 0xC9 | 0x89 | Pause | 0x89 → slot2 → E1 14 77 |
| 0x7F | 0xFF | 0x89 | （Pause 兄弟位） | 原始为空 |

## T7128 改动（@0x2971C，[普通， Fn] 成对数据线表，共 5 字节）

| 偏移 | stock | final | 作用 |
|---|---|---|---|
| [20] | 0x88 | 0x8B | E=0xCA（stock 零使用者）普通项 → Home 线 |
| [21] | 0x84 | 0x8E | 同对 Fn 项 → End 线（**Home/End 键 Fn+=End** 的实现） |
| [33] | 0x84 | 0x78 | F11 的 Fn 项 → F11（杀掉 SysRq） |
| [35] | 0x88 | 0x07 | F12 的 Fn 项 → F12（杀掉 SysRq） |
| [53] | 0xAD | 0x0A | F8 的 Fn 项 → F8（杀掉 scroll） |

## 代码区改动（唯一一处，1 字节）

`fw[0x10EA0]`: 0xE6 → 0xFF —— h3_10d7c 的 CAD latch `cmp_s wire, 0x66`
改为与 0xFF 比较（永不命中）。**用户在 stock 恢复包上实测证明 Fn+Backspace
= Ctrl+Alt+Del 是原厂行为**（JIS 矩阵配英文键盘所致），此字节将其关闭，
Fn+BS 恢复为普通 Backspace。

## NumLock 小键盘层（CT1' 表，实机验证）

| 键 | NumLock 开 | NumLock 关 |
|---|---|---|
| `;` | KP+ | `;` |
| `0` | KP* | `0` |
| `P` | KP- | `P` |
| 数字 8（0x28=KP8） | `8` | Home |

## Fn 层最终行为

- **保留的 stock Fn（有用）**：Fn+← = Home、Fn+→ = End、Fn+↑/↓ = 翻页类导航；
  F1–F7/F9/F10 的 Fn 组合（JIS 亮度/音量类）未动。
- **关闭的 stock Fn**：Fn+BS = Ctrl+Alt+Del（代码字节，原厂实测证实）、
  Fn+F8/F11/F12 = scroll/SysRq 类（T7128 三项）、Fn+-/'/[ 的 kp 组合（直连线绕过 CT 门）。
- Home/End 键本身：普通按 = Home（CT2'[0xFF]=0x55 '=' 的路径已被毯覆覆盖），
  Fn+按 = End。
