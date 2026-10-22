import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze9 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    void decomp(long fe) throws Exception {
        Function f = currentProgram.getFunctionManager().getFunctionAt(addr(fe));
        if (f == null) { out("### no function at 0x" + Long.toHexString(fe)); return; }
        out("### FN " + f.getName() + " @0x" + Long.toHexString(fe));
        DecompileResults res = dec.decompileFunction(f, 400, monitor);
        out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
        out("");
    }
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze9.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        long[] fns = { 0x405950, 0x404620, 0x4045f0, 0x404c40, 0x404ba0, 0x404d10, 0x404b00, 0x412a40, 0x404fd0, 0x406430, 0x405470, 0x404120 };
        for (long fn : fns) decomp(fn);
        w.close();
        println("DONE ecu_analyze9");
    }
}
