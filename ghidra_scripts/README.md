# Ghidra 分析脚本

CF-SZ5 的 EC 固件是 **ARCompact**（ARCv1，32 位小端）。Ghidra 官方发行版
没有 ARC 处理器模块，本项目用的是 **nioss-ledger/ghidra** fork 构建的
ARC 支持（`ARCompact:LE:32:default`）。注意是 "nioss-ledger" 的 fork，
不是 mainline Ghidra。

- `run-headless.ps1` —— 参数化的无头分析入口（用法见文件头注释）。
- `*.java` —— 批量反汇编/反编译/调用图 dump 脚本（`AsmPrinter` /
  `DecompileScript` 等的简单封装，大多从 Ghidra 示例改写）。
  `dump_conv*.java`、`decomp_handlers.java` 等对应 EC 键盘处理链的关键函数。
- `ec_analysis.py` —— Jython 版（Ghidra 内置 Python2），做函数列表/字符串
  交叉引用扫描。
- `prologues.txt` —— 手工标注的函数入口清单（配合 `force_disasm.java`
  强制反汇编数据区里的代码）。
- `_archive_runners/` —— 当时每次分析跑一次的 PowerShell runner，
  全部硬编码了本机路径，仅存档。

典型用法（在装好 Ghidra + ARC 模块的机器上）：

```powershell
.\run-headless.ps1 -GhidraDir C:\tools\ghidra_12.1.4_PUBLIC `
    -ProjectDir <仓库>\ghidra_proj -Image <工作目录>\ec_image_pristine.bin `
    -Script decomp_handlers.java
```

输出文本会写到当前目录的 `ecval_log.txt`（参数可改）。
