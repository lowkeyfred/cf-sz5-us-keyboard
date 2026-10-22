import java.io.File;
import java.io.FileWriter;
import java.util.*;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.disassemble.Disassembler;

public class scan_hunt3 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "scan_hunt3.txt"));
        Listing listing = currentProgram.getListing();
        Disassembler dis = Disassembler.getDisassembler(currentProgram, monitor, null);
        long[][] ranges = {
            {0x123A4, 0x124C4},
            {0x1F0AC, 0x1F240},
            {0x10D7C, 0x10DC4},
            {0x3C30, 0x3CA0},
            {0x7990, 0x7A20},
        };
        for (long[] r : ranges) {
            AddressSetView asv = new AddressSet(addr(r[0]), addr(r[1]));
            try { dis.disassemble(addr(r[0]), asv, false); } catch (Exception e) {}
        }
        w.write("=== ASM ===" + (char)10);
        for (long[] r : ranges) {
            w.write(String.format("--- 0x%X - 0x%X ---" + (char)10, r[0], r[1]));
            InstructionIterator it = listing.getInstructions(addr(r[0]), true);
            while (it.hasNext()) {
                Instruction i = it.next();
                long off = i.getAddress().getOffset();
                if (off > r[1]) break;
                w.write(String.format("%08X  %s" + (char)10, off, i.toString()));
            }
        }
        FunctionManager fm = currentProgram.getFunctionManager();
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);
        w.write("=== DECOMP ===" + (char)10);
        for (long s : new long[]{0x123A4, 0x1F0AC, 0x10D7C, 0x3C30}) {
            Function f = fm.getFunctionContaining(addr(s));
            if (f == null) {
                try {
                    f = fm.createFunction("h3_" + Long.toHexString(s), addr(s),
                        new AddressSet(addr(s), addr(s + 0x180)), SourceType.USER_DEFINED);
                } catch (Exception e) { w.write("create fail 0x" + Long.toHexString(s) + ": " + e.getMessage() + (char)10); continue; }
            }
            DecompileResults res = dec.decompileFunction(f, 180, monitor);
            w.write(String.format("##### %s @ 0x%X #####" + (char)10, f.getName(), f.getEntryPoint().getOffset()));
            w.write(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR: " + res.getErrorMessage());
            w.write("" + (char)10 + (char)10);
        }
        w.close();
        println("DONE scan_hunt3");
    }
}
