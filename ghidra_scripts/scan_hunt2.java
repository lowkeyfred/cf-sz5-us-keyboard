import java.io.File;
import java.io.FileWriter;
import java.util.*;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.disassemble.Disassembler;
import ghidra.program.model.mem.MemoryBlock;

public class scan_hunt2 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "scan_hunt2.txt"));
        Listing listing = currentProgram.getListing();
        Disassembler dis = Disassembler.getDisassembler(currentProgram, monitor, null);
        // disassemble the entire RAM block
        MemoryBlock ram = currentProgram.getMemory().getBlock(addr(0));
        for (long c = 0x1000; c < 0x29000; c += 0x400) {
            AddressSetView asv = new AddressSet(addr(c), addr(c + 0x400));
            try { dis.disassemble(addr(c), asv, false); } catch (Exception e) {}
        }
        w.write("disasm pass done" + (char)10);
        // scan all instructions for interesting scalars / call targets
        Set<Long> sites = new TreeSet<Long>();
        InstructionIterator it = listing.getInstructions(addr(0x1000), true);
        int n = 0;
        while (it.hasNext() && n < 200000) {
            Instruction ins = it.next(); n++;
            String s = ins.toString();
            long off = ins.getAddress().getOffset();
            if (s.contains("0x00010d7c") || s.contains("0x10d7c")) sites.add(off);
            if (s.contains("0x800c78")) sites.add(off);
            if (s.contains("0x800c80")) sites.add(off);
            if (s.contains("0x800b70")) sites.add(off);
            if (s.contains("0x000123a4") || s.contains("0x123a4")) sites.add(off);
        }
        w.write("instruction scan done, " + n + " ins, " + sites.size() + " sites\n");
        for (long off : sites) w.write(String.format("site 0x%05x\n", off));
        // decompile containing functions
        FunctionManager fm = currentProgram.getFunctionManager();
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);
        Set<Long> fnStarts = new TreeSet<Long>();
        for (long off : sites) {
            Function f = fm.getFunctionContaining(addr(off));
            if (f != null) { fnStarts.add(f.getEntryPoint().getOffset()); continue; }
            Address a = addr(off & ~1);
            try {
                Function nf = fm.createFunction("h2_" + Long.toHexString(off), a,
                    new AddressSet(addr(Math.max(0,(off&~1)-0x80)), addr((off&~1)+0x280)), SourceType.USER_DEFINED);
                fnStarts.add(nf.getEntryPoint().getOffset());
            } catch (Exception e) { w.write("create failed @0x" + Long.toHexString(off) + ": " + e.getMessage() + "\n"); }
        }
        w.write("\n===== FUNCTIONS =====\n");
        for (long fs : fnStarts) {
            Function f = fm.getFunctionAt(addr(fs));
            if (f == null) continue;
            DecompileResults res = dec.decompileFunction(f, 180, monitor);
            w.write(String.format("\n##### fn %s @ 0x%X (body 0x%X-0x%X) #####\n", f.getName(), fs,
                f.getBody().getMinAddress().getOffset(), f.getBody().getMaxAddress().getOffset()));
            w.write(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR: " + res.getErrorMessage());
            w.write("\n");
        }
        w.close();
        println("DONE scan_hunt2");
    }
}
