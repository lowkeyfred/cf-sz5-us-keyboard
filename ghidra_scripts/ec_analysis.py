# Ghidra headless postscript: CF-SZ5 EC firmware keyboard-path analysis.
# Runs after auto-analysis. Expects ARCompact:LE:32:default, base 0.
# Usage: analyzeHeadless.bat <projdir> sz5ec -import ec_firmware.bin \
#   -processor ARCompact:LE:32:default -scriptPath . -postscript ec_analysis.py -deleteProject
import sys, os
from ghidra.app.script import GhidraScript
from ghidra.program.model.symbol import RefType, SymbolType, SourceType
from ghidra.program.model.listing import CodeUnit
from ghidra.program.flatapi import FlatProgramAPI
from ghidra.app.decompiler import DecompInterface, DecompileOptions

OUT = r"C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\ghidra_out"
if not os.path.isdir(OUT):
    os.makedirs(OUT)

fm = currentProgram.getFunctionManager()
rm = currentProgram.getReferenceManager()
mem = currentProgram.getMemory()
listing = currentProgram.getListing()

def addr(a):
    return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a)

log = open(os.path.join(OUT, "report.txt"), "w")
def p(*args):
    s = " ".join(str(a) for a in args)
    log.write(s + "\n")
    print(s)

p("=== program:", currentProgram.getName(), "base:", mem.getMinAddress(), "-", mem.getMaxAddress())

# --- pass 0: seed functions from the r2-derived function list, disassemble code region ---
from ghidra.app.util.disassembler import Disassembler
from ghidra.program.model.address import AddressSet
from ghidra.util.task import ConsoleTaskMonitor
dis = Disassembler.getDisassembler(currentProgram, monitor, ConsoleTaskMonitor())
FUNC_LIST = r"C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\ec_functions.txt"
seeded = 0
try:
    for line in open(FUNC_LIST):
        parts = line.split()
        if len(parts) < 2:
            continue
        try:
            a = int(parts[0], 16) & 0xFFFFFFFF
            sz = int(parts[1], 10)
        except ValueError:
            continue
        if a + sz > 0x29000 or a < 0x100:
            continue
        r = dis.disassemble(addr(a), AddressSet(addr(a), addr(a + sz - 1)), True)
        f = fm.getFunctionAt(addr(a))
        if f is None:
            try:
                fm.createFunction("fcn_%05X" % a, addr(a), AddressSet(addr(a), addr(a + sz - 1)), SourceType.USER_DEFINED)
                seeded += 1
            except Exception:
                pass
    p("seeded %d functions from r2 list" % seeded)
except IOError:
    p("function list not found, skipping seed")

# entry: disassemble from 0 as well
dis.disassemble(addr(0), AddressSet(addr(0), addr(0x300)), True)

# --- pass 1: every instruction whose scalar operand lands in 0x29000-0x29800 ---
p("\n=== instructions referencing 0x29000-0x29800 (data region) ===")
ins = listing.getInstructions(True)
tbl = {}
while ins.hasNext():
    i = ins.next()
    for op in i.getOpObjects(0), :
        pass
    # scan all operands for scalars / addresses
    for n in range(i.getNumOperands()):
        for o in i.getOpObjects(n):
            if hasattr(o, "getOffset"):
                v = o.getOffset() & 0xFFFFFFFF
                if 0x29000 <= v <= 0x29800:
                    f = fm.getFunctionContaining(i.getAddress())
                    fn = f.getName() if f else "?"
                    key = (fn)
                    tbl.setdefault(v, []).append((i.getAddress().getOffset(), i.toString(), fn))
for v in sorted(tbl):
    refs = tbl[v]
    p("0x%05X  (%d refs)" % (v, len(refs)))
    seen = set()
    for a, s, fn in refs:
        k = (a >> 4)
        if k in seen:
            continue
        seen.add(k)
        p("    @0x%05X  %-40s  in %s" % (a, s, fn))

# --- pass 2: xrefs to key addresses from reference manager ---
p("\n=== reference-manager xrefs to key addresses ===")
for v in (0x29454, 0x29468, 0x2949C, 0x2951C, 0x2959C, 0x2961C, 0x29764, 0x290FC, 0x29778, 0x297DC, 0x28FDC):
    refs = rm.getReferencesTo(addr(v))
    p("to 0x%05X:" % v)
    while refs.hasNext():
        r = refs.next()
        f = fm.getFunctionContaining(r.getFromAddress())
        p("    from 0x%05X (%s) type=%s in %s" % (r.getFromAddress().getOffset(),
              r.getFromAddress(), r.getReferenceType(), f.getName() if f else "?"))

# --- pass 3: decompile interesting functions ---
p("\n=== decompilation of key functions ===")
decomp = DecompInterface()
decomp.openProgram(currentProgram)
for a in (0xFFF4, 0x100AC, 0x79A0, 0x15D34, 0x15D84, 0x1809C, 0x55BC, 0x55D4,
          0x16148, 0x179B2, 0x27F30, 0xFF9C, 0x1000C, 0x15D50):
    f = fm.getFunctionAt(addr(a))
    if f is None:
        # try creating
        p("no function at 0x%05X" % a)
        continue
    res = decomp.decompileFunction(f, 60, monitor)
    if res.decompileCompleted():
        src = res.getDecompiledFunction().getC()
        p("\n----- 0x%05X %s -----" % (a, f.getName()))
        p(src)
        with open(os.path.join(OUT, "fn_%05X.c" % a), "w") as fh:
            fh.write(src)
    else:
        p("decompile failed at 0x%05X: %s" % (a, res.getErrorMessage()))

# --- pass 4: full disassembly of the dispatcher neighborhood to file ---
with open(os.path.join(OUT, "dispatch_0FFF4.txt"), "w") as fh:
    i = listing.getInstructions(addr(0xFF80), True)
    while i.hasNext():
        ins2 = i.next()
        if ins2.getAddress().getOffset() > 0x10300:
            break
        fh.write("%s\n" % ins2)

log.close()
print("DONE - output in", OUT)
