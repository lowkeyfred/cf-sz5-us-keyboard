import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.SourceType;

public class decomp_7128b extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "f7128.txt"));
        FunctionManager fm = currentProgram.getFunctionManager();
        ghidra.program.disassemble.Disassembler dis =
            ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
        // force disasm regions first
        for (long[] r : new long[][]{{0x7128,0x7200},{0x207BC,0x20880},{0x165B8,0x16700},{0x12360,0x123A4},{0xFCB0,0xFDD0}}) {
            Address seed = addr(r[0] & ~1);
            try { dis.disassemble(seed, new AddressSet(seed, addr(r[1])), false); } catch (Exception e) {}
        }
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);
        long[] sites = {0x7128, 0x207BC, 0x165B8, 0x12360, 0xFCC8};
        for (long s : sites) {
            Address a = addr(s);
            Function f = fm.getFunctionContaining(a);
            if (f == null) {
                try { f = fm.createFunction("fn_" + Long.toHexString(s), a,
                        new AddressSet(a, addr(s + 0x180)), SourceType.USER_DEFINED); }
                catch (Exception e) { w.write(String.format("### create failed 0x%X: %s\n\n", s, e.getMessage())); continue; }
            }
            DecompileResults res = dec.decompileFunction(f, 120, monitor);
            w.write(String.format("##### fn %s @ 0x%X #####\n", f.getName(), f.getEntryPoint().getOffset()));
            w.write(res.decompileCompleted() ? res.getDecompiledFunction().getC() : res.getErrorMessage());
            w.write("\n\n");
        }
        w.close();
        println("DONE 7128");
    }
}
