import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze12 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    void decomp(long fe) throws Exception {
        Function f = currentProgram.getFunctionManager().getFunctionAt(addr(fe));
        if (f == null) { out("### no function at 0x" + Long.toHexString(fe)); return; }
        out("### FN " + f.getName() + " @0x" + Long.toHexString(fe) + " (0x" + Long.toHexString(fe) + "-0x" + Long.toHexString(fe + f.getBody().getNumAddresses()) + ")");
        DecompileResults res = dec.decompileFunction(f, 400, monitor);
        out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
        out("");
    }
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze12.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        // model-ID compare (0xC9 source), version getters, classify
        decomp(0x407c00);
        decomp(0x407b40);
        decomp(0x407b70);
        decomp(0x407bd0);
        decomp(0x407ba0);
        decomp(0x405c10);
        w.close();
        println("DONE ecu_analyze12");
    }
}
