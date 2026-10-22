import java.io.File;
import java.io.FileWriter;
import java.util.Set;
import java.util.HashSet;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.*;

public class ecu_analyze15 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze15.txt"));
        Address tgt = addr(0x411750L);   // FUN_00411750 error display
        ReferenceManager rm = currentProgram.getReferenceManager();
        Set<Function> callers = new HashSet<Function>();
        for (Reference r : rm.getReferencesTo(tgt)) {
            Function f = currentProgram.getFunctionManager().getFunctionContaining(r.getFromAddress());
            if (f != null) callers.add(f);
        }
        out("callers of FUN_00411750: " + callers.size());
        DecompInterface dec = new DecompInterface(); dec.openProgram(currentProgram);
        for (Function f : callers) {
            DecompileResults res = dec.decompileFunction(f, 400, monitor);
            String c = res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR";
            out("===== CALLER " + f.getName() + " @0x" + f.getEntryPoint() + " =====");
            // print only lines mentioning 11750 plus context
            String[] lines = c.split("\n");
            for (int i = 0; i < lines.length; i++) {
                if (lines[i].contains("00411750")) {
                    int a = Math.max(0, i-6), b = Math.min(lines.length, i+3);
                    for (int j = a; j < b; j++) out("  " + lines[j]);
                    out("  ---");
                }
            }
            out("");
        }
        w.close();
        println("DONE ecu_analyze15");
    }
}
