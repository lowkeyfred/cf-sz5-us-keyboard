import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze10 extends GhidraScript {
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
        w = new FileWriter(new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze10.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        long[] fns = { 0x418510, 0x4052a0, 0x405420, 0x404080, 0x404e00, 0x412a40, 0x403310, 0x404fd0 };
        for (long fn : fns) decomp(fn);
        w.close();
        println("DONE ecu_analyze10");
    }
}
