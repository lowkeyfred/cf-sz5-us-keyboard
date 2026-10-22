import java.io.File;
import java.io.FileWriter;
import java.util.*;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.mem.MemoryBlock;

import ghidra.program.disassemble.Disassembler;

public class scan_hunt extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "scan_hunt.txt"));
        Memory mem = currentProgram.getMemory();
        MemoryBlock ram = mem.getBlock(addr(0));
        Address start = ram.getStart(), end = ram.getEnd();
        Disassembler dis = Disassembler.getDisassembler(currentProgram, monitor, null);

        // 1) find all 3-byte hits of 0x0b 0x80 0x00 (keyslot base 0x800Bxx)
        byte[] pat = {0x0b, (byte)0x80, 0x00};
        Set<Long> hitSet = new TreeSet<Long>();
        Address cur = start;
        while (true) {
            Address h = mem.findBytes(cur, end, pat, new byte[]{-1,-1,-1}, true, monitor);
            if (h == null) break;
            long off = h.getOffset();
            // preceding byte = low byte of the 32-bit immediate
            int lo = mem.getByte(h.subtract(1)) & 0xff;
            hitSet.add(off - 1);
            w.write(String.format("HIT base imm 0x%02x0b8000 @ 0x%05x\n", lo, off - 1));
            cur = h.add(1);
        }
        w.write("\n=== total hits: " + hitSet.size() + " ===\n\n");

        // 2) disassemble windows around each hit, dump raw asm
        Listing listing = currentProgram.getListing();
        for (long off : hitSet) {
            long w0 = off & ~1;
            Address seed = addr(w0);
            try { dis.disassemble(seed, new AddressSet(addr(Math.max(0,w0-0x60)), addr(w0+0x60)), false); } catch (Exception e) {}
            w.write(String.format("\n----- window around 0x%05x -----\n", off));
            Instruction it = listing.getInstructionAt(addr(off));
            if (it == null) it = listing.getInstructionContaining(addr(off));
            if (it != null) {
                Instruction p = it.getPrevious();
                for (int i = 0; i < 3 && p != null; i++) { it = p; p = p.getPrevious(); }
                for (int i = 0; i < 12 && it != null; i++) {
                    w.write(String.format("  %s  %s\n", it.getAddress(), it.toString()));
                    it = it.getNext();
                }
            } else w.write("  (no instruction)\n");
        }

        // 3) decompile: containing function of each hit + known scan sites
        FunctionManager fm = currentProgram.getFunctionManager();
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);
        Set<Long> fnStarts = new TreeSet<Long>();
        for (long off : hitSet) {
            Function f = fm.getFunctionContaining(addr(off));
            if (f != null) fnStarts.add(f.getEntryPoint().getOffset());
            else {
                Address a = addr(off & ~1);
                try {
                    Function nf = fm.createFunction("scfn_" + Long.toHexString(off), a,
                        new AddressSet(addr(Math.max(0,(off&~1)-0x100)), addr((off&~1)+0x300)), SourceType.USER_DEFINED);
                    fnStarts.add(nf.getEntryPoint().getOffset());
                } catch (Exception e) { w.write("create failed @0x" + Long.toHexString(off) + ": " + e.getMessage() + "\n"); }
            }
        }
        for (long s : new long[]{0xFBBC, 0x22A14, 0x22540, 0x24C80, 0x22B1E, 0x2576C}) {
            Function f = fm.getFunctionContaining(addr(s));
            if (f != null) fnStarts.add(f.getEntryPoint().getOffset());
            else {
                Address a = addr(s);
                try {
                    Function nf = fm.createFunction("scsite_" + Long.toHexString(s), a,
                        new AddressSet(addr(s - 0x40), addr(s + 0x380)), SourceType.USER_DEFINED);
                    fnStarts.add(nf.getEntryPoint().getOffset());
                } catch (Exception e) { w.write("create failed site 0x" + Long.toHexString(s) + ": " + e.getMessage() + "\n"); }
            }
        }
        w.write("\n\n===== FUNCTION DECOMPILATIONS =====\n");
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
        println("DONE scan_hunt");
    }
}
