import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze19 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    void decompAt(long va) throws Exception {
        Function f = currentProgram.getFunctionManager().getFunctionContaining(addr(va));
        if (f == null) { out("### no function at 0x" + Long.toHexString(va)); return; }
        out("### FN " + f.getName() + " @0x" + f.getEntryPoint() + " - 0x" + f.getBody().getMaxAddress());
        DecompileResults res = dec.decompileFunction(f, 600, monitor);
        out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
        out("");
    }
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze19.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        decompAt(0x9AAE);
        decompAt(0x9B6A);
        decompAt(0x9D00);
        decompAt(0x9A00);
        w.close();
        println("DONE ecu_analyze19");
    }
}
