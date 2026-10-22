# 一次性探索脚本

这些是逆向过程中随手写的一次性工具：在二进制里搜魔数、dump 各种候选表、
比较 SZ5/SZ6 固件差异、解析 PE/Intel flash descriptor 等。它们**不是**工具链
的一部分，大多含有当时本地的硬编码路径，照搬前先看一遍代码。

想理解整体方法，从 [../README.md](../README.md) 和
[../../docs/METHOD.md](../../docs/METHOD.md) 开始。

`ec_capsule.py` / `lznt1*.py` 对理解胶囊格式有帮助（正式工具链用
RtlCompressBuffer 完成同样的工作）；`peinfo.py` 是干净的 PE 解析参考实现。
