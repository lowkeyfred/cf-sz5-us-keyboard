import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze16 extends GhidraScript {
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
        w = new FileWriter(new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze16.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        decomp(0x411750);   // message display (code->resource string)
        decomp(0x411510);   // pre-flash check 1
        decomp(0x4112b0);   // pre-flash check 2
        decomp(0x4086b0);   // pre-flash check 3
        decomp(0x404900);   // BIOS I/F init
        decomp(0x407ac0);   // BIOS I/F check
        decomp(0x403120);   // classify helper
        decomp(0x4046b0);   // type-4 detector
        w.close();
        println("DONE ecu_analyze16");
    }
}
