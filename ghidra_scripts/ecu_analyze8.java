import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze8 extends GhidraScript {
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
        w = new FileWriter(new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze8.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        long[] fns = { 0x413ca0, 0x405c10, 0x407b40, 0x407b70, 0x407ba0, 0x407bd0, 0x407c00, 0x407e30,
                       0x413f00, 0x413180, 0x407ac0, 0x4900 + 0x400000 };
        for (long fn : fns) decomp(fn);
        w.close();
        println("DONE ecu_analyze8");
    }
}
