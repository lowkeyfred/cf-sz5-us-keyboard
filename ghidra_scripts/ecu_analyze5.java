import java.io.File;
import java.io.FileWriter;
import java.util.*;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.scalar.*;

public class ecu_analyze5 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze5.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        long[] consts = { 3003, 3000, 0xBBB, 0xBB8, 134786, 0x20E82, 198656, 0x30800, 0x4E3058, 0xE3058 };
        Map<Long, List<Long>> hits = new LinkedHashMap<>();
        for (long c : consts) hits.put(c, new ArrayList<>());
        InstructionIterator it = currentProgram.getListing().getInstructions(true);
        int n = 0;
        while (it.hasNext() && n < 3000000) {
            Instruction ins = it.next(); n++;
            for (int k = 0; k < ins.getNumOperands(); k++) {
                for (Object o : ins.getOpObjects(k)) {
                    if (o instanceof Scalar) {
                        long v = ((Scalar) o).getUnsignedValue();
                        if (hits.containsKey(v)) hits.get(v).add(ins.getAddress().getOffset());
                    }
                }
            }
        }
        Set<Long> fnEntries = new TreeSet<>();
        for (Map.Entry<Long, List<Long>> e : hits.entrySet()) {
            out("CONST " + e.getKey() + " (0x" + Long.toHexString(e.getKey()) + ") sites:");
            for (long s : e.getValue()) {
                out("   0x" + Long.toHexString(s));
                Function f = currentProgram.getFunctionManager().getFunctionContaining(addr(s));
                if (f != null) fnEntries.add(f.getEntryPoint().getOffset());
            }
        }
        for (long fe : fnEntries) {
            Function f = currentProgram.getFunctionManager().getFunctionAt(addr(fe));
            out("### FN " + f.getName() + " @0x" + Long.toHexString(fe) + " (0x" + Long.toHexString(f.getBody().getMinAddress().getOffset()) + "-0x" + Long.toHexString(f.getBody().getMaxAddress().getOffset()) + ")");
            DecompileResults res = dec.decompileFunction(f, 300, monitor);
            out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
            out("");
        }
        w.close();
        println("DONE ecu_analyze5");
    }
}
