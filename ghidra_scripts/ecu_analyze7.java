import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze7 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    void decomp(long fe) throws Exception {
        Function f = currentProgram.getFunctionManager().getFunctionAt(addr(fe));
        if (f == null) { out("### no function at 0x" + Long.toHexString(fe)); return; }
        out("### FN " + f.getName() + " @0x" + Long.toHexString(fe) + " (0x" + Long.toHexString(f.getBody().getMinAddress().getOffset()) + "-0x" + Long.toHexString(f.getBody().getMaxAddress().getOffset()) + ")");
        DecompileResults res = dec.decompileFunction(f, 400, monitor);
        out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
        out("");
    }
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze7.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        decomp(0x408930);
        decomp(0x404720);
        decomp(0x413cf0);
        decomp(0x4145d0);
        decomp(0x4117f0);   // may not exist
        w.close();
        println("DONE ecu_analyze7");
    }
}
