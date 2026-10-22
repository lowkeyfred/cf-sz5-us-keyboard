import java.io.File;
import java.io.FileWriter;
import java.util.*;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.mem.*;

public class ecu_analyze4 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    Set<Long> decompiled = new TreeSet<>();
    void decompFuncAt(long off, String tag) throws Exception {
        Function f = currentProgram.getFunctionManager().getFunctionContaining(addr(off));
        if (f == null) { out("### " + tag + " @0x" + Long.toHexString(off) + ": no function"); return; }
        long entry = f.getEntryPoint().getOffset();
        if (!decompiled.add(entry)) return;
        out("### FN " + f.getName() + " @0x" + Long.toHexString(entry) + " (0x" + Long.toHexString(f.getBody().getMinAddress().getOffset()) + "-0x" + Long.toHexString(f.getBody().getMaxAddress().getOffset()) + ") [" + tag + "]");
        DecompileResults res = dec.decompileFunction(f, 300, monitor);
        out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
        out("");
    }
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze4.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        Memory mem = currentProgram.getMemory();
        long[] strVa = { 5118096, 5118684, 5118152, 5118740, 5117960, 5118032, 5119104, 5122040, 5122724 };
        // find pointers to these strings anywhere in memory
        for (long va : strVa) {
            byte[] pat = { (byte)va, (byte)(va>>8), (byte)(va>>16), (byte)(va>>24) };
            for (MemoryBlock blk : mem.getBlocks()) {
                if (!blk.isInitialized()) continue;
                byte[] bytes = new byte[(int) blk.getSize()];
                blk.getBytes(blk.getStart(), bytes);
                for (int i = 0; i + 4 <= bytes.length; i++) {
                    if (bytes[i]==pat[0] && bytes[i+1]==pat[1] && bytes[i+2]==pat[2] && bytes[i+3]==pat[3]) {
                        long ptrVa = blk.getStart().getOffset() + i;
                        out(String.format("ptr to 0x%x found at 0x%x", va, ptrVa));
                        for (Reference ref : currentProgram.getReferenceManager().getReferencesTo(addr(ptrVa)))
                            out("   code xref from 0x" + Long.toHexString(ref.getFromAddress().getOffset()));
                    }
                }
            }
        }
        // entry point & WinMain path
        for (MemoryBlock blk : mem.getBlocks()) {
            if (!blk.isInitialized()) continue;
            byte[] bytes = new byte[(int) blk.getSize()];
            blk.getBytes(blk.getStart(), bytes);
            for (int i = 0; i + 6 <= bytes.length; i++) {
                if (bytes[i]=='V' && bytes[i+1]=='%' && bytes[i+2]=='d') {
                    long va = blk.getStart().getOffset() + i;
                    out(String.format("fmtstr '%s' @ 0x%x", new String(bytes, i, 20, "ASCII").split("\0")[0], va));
                }
            }
        }
        w.close();
        println("DONE ecu_analyze4");
    }
}
