import java.io.File;
import java.io.FileWriter;
import java.util.*;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.mem.*;
import ghidra.program.model.scalar.*;

public class ecu_analyze extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    void decompAt(long off, String tag) throws Exception {
        Function f = currentProgram.getFunctionManager().getFunctionContaining(addr(off));
        if (f == null) { out("### " + tag + " @0x" + Long.toHexString(off) + ": no function"); return; }
        out("### " + tag + " fn " + f.getName() + " @0x" + Long.toHexString(f.getEntryPoint().getOffset()) + " (body 0x" + Long.toHexString(f.getBody().getMinAddress().getOffset()) + "-0x" + Long.toHexString(f.getBody().getMaxAddress().getOffset()) + ")");
        DecompileResults res = dec.decompileFunction(f, 300, monitor);
        out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
        out("");
    }
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        Memory mem = currentProgram.getMemory();
        // 1. find interesting strings
        String[] needles = { "V1.00L10 M00", "V1.00L11 M00", "Current EC Version: ", "New EC Version: ",
            "already been updated", "An unexpected error", "ROM file is not specified",
            "cannot be read", "must be executed on Windows PE", "This model is not supported" };
        Map<String, List<Long>> hits = new LinkedHashMap<>();
        for (String n : needles) hits.put(n, new ArrayList<>());
        for (MemoryBlock blk : mem.getBlocks()) {
            if (!blk.isInitialized()) continue;
            byte[] bytes = new byte[(int) blk.getSize()];
            blk.getBytes(blk.getStart(), bytes);
            for (Map.Entry<String, List<Long>> e : hits.entrySet()) {
                byte[] pat = e.getKey().getBytes("UTF-16LE");
                for (int i = 0; i + pat.length <= bytes.length; i++) {
                    boolean ok = true;
                    for (int j = 0; j < pat.length; j++) if (bytes[i+j] != pat[j]) { ok = false; break; }
                    if (ok) e.getValue().add(blk.getStart().getOffset() + i);
                }
            }
        }
        for (Map.Entry<String, List<Long>> e : hits.entrySet()) {
            out("STR " + e.getKey() + " @ " + e.getValue());
            for (long a : e.getValue()) {
                // find code xrefs to the address (string bodies are referenced by pointer in .rdata usually)
                for (Reference ref : currentProgram.getReferenceManager().getReferencesTo(addr(a))) {
                    out("   xref from 0x" + Long.toHexString(ref.getFromAddress().getOffset()));
                }
            }
        }
        // 2. scan code for interesting constants
        int[] consts = { 0xEDB88320, 0x48058, 0x48057, 0x1E80, 0x73A00 };
        InstructionIterator it = currentProgram.getListing().getInstructions(true);
        Map<Integer, List<Long>> chits = new LinkedHashMap<>();
        for (int c : consts) chits.put(c, new ArrayList<>());
        int n = 0;
        while (it.hasNext() && n < 3000000) {
            Instruction ins = it.next(); n++;
            for (int k = 0; k < ins.getNumOperands(); k++) {
                Object[] objs = ins.getOpObjects(k);
                for (Object o : objs) {
                    if (o instanceof Scalar) {
                        long v = ((Scalar) o).getUnsignedValue();
                        for (int c : consts) if (v == c) chits.get(c).add(ins.getAddress().getOffset());
                    }
                }
            }
        }
        for (Map.Entry<Integer, List<Long>> e : chits.entrySet())
            out("CONST 0x" + Integer.toHexString(e.getKey()) + " @ " + e.getValue().size() + " sites " + e.getValue().subList(0, Math.min(20, e.getValue().size())));
        // 3. decompile functions containing string xrefs
        Set<Long> done = new TreeSet<>();
        for (Map.Entry<String, List<Long>> e : hits.entrySet()) {
            for (long a : e.getValue()) {
                for (Reference ref : currentProgram.getReferenceManager().getReferencesTo(addr(a))) {
                    long foff = ref.getFromAddress().getOffset();
                    Function f = currentProgram.getFunctionManager().getFunctionContaining(addr(foff));
                    if (f != null && done.add(f.getEntryPoint().getOffset()))
                        decompAt(foff, "str:" + e.getKey());
                }
            }
        }
        w.close();
        println("DONE ecu_analyze");
    }
}
