import java.io.File;
import java.io.FileWriter;
import java.util.*;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.symbol.SourceType;

public class scan_hunt4 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "scan_hunt4.txt"));
        // 1) references to key RAM addresses
        ReferenceManager rm = currentProgram.getReferenceManager();
        long[] watch = {0x800B60, 0x800B70, 0x800B7A, 0x800B88, 0x800C78, 0x800C80, 0x800C84};
        Set<Long> fnStarts = new TreeSet<Long>();
        FunctionManager fm = currentProgram.getFunctionManager();
        for (long t : watch) {
            w.write(String.format("=== refs to 0x%X ===" + (char)10, t));
            ReferenceIterator rit = rm.getReferencesTo(addr(t));
            int n = 0;
            while (rit.hasNext()) {
                Reference r = rit.next();
                w.write(String.format("  %s  from %s" + (char)10, r.getReferenceType(), r.getFromAddress()));
                Function f = fm.getFunctionContaining(r.getFromAddress());
                if (f != null) fnStarts.add(f.getEntryPoint().getOffset());
                n++;
            }
            w.write("  (" + n + " refs)" + (char)10);
        }
        // 2) flow targets vs cave candidates
        Listing listing = currentProgram.getListing();
        Set<Long> targets = new HashSet<Long>();
        InstructionIterator it = listing.getInstructions(addr(0x1000), true);
        while (it.hasNext()) {
            Instruction i = it.next();
            long off = i.getAddress().getOffset();
            if (off > 0x29000) break;
            for (Address f : i.getFlows()) targets.add(f.getOffset());
        }
        w.write("=== cave safety ===" + (char)10);
        long[][] caves = {{0x2868b, 0x286a8}, {0x286aa, 0x28782}, {0x2891d, 0x28960}};
        for (long[] c : caves) {
            int hits = 0;
            for (long t = c[0]; t <= c[1]; t++) if (targets.contains(t)) hits++;
            w.write(String.format("  cave 0x%X-0x%X: %d flow targets inside" + (char)10, c[0], c[1], hits));
        }
        w.write("  total flow targets collected: " + targets.size() + (char)10);
        // 3) full asm of fn_10D7C
        w.write("=== fn_10D7C asm 0x10D7C-0x10E50 ===" + (char)10);
        InstructionIterator it2 = listing.getInstructions(addr(0x10D7C), true);
        while (it2.hasNext()) {
            Instruction i = it2.next();
            long off = i.getAddress().getOffset();
            if (off > 0x10E50) break;
            w.write(String.format("%08X  %s" + (char)10, off, i.toString()));
        }
        // 4) decompile writer functions
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);
        w.write("=== decomp of ref'd functions ===" + (char)10);
        for (long fs : fnStarts) {
            Function f = fm.getFunctionAt(addr(fs));
            if (f == null) continue;
            DecompileResults res = dec.decompileFunction(f, 180, monitor);
            w.write(String.format("##### %s @ 0x%X #####" + (char)10, f.getName(), fs));
            w.write(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR: " + res.getErrorMessage());
            w.write("" + (char)10 + (char)10);
        }
        w.close();
        println("DONE scan_hunt4");
    }
}
