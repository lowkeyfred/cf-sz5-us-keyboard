// Create + decompile remaining missing functions.
import java.io.File;
import java.io.FileWriter;

import ghidra.app.decompiler.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.SourceType;

public class decomp_missing extends GhidraScript {

    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }

    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//frederich//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "missing.txt"));
        FunctionManager fm = currentProgram.getFunctionManager();

        long[] sites = {0x3C30, 0x10D7C, 0x165B4, 0x83F4, 0xE4FA, 0x18992, 0x1DEF8, 0x1DF80,
                        0x14EB8, 0x14F60, 0x8B72, 0x10182, 0x20434, 0x11618, 0x130FC};
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);

        for (long s : sites) {
            Address a = addr(s);
            // force disasm
            try {
                ghidra.program.disassemble.Disassembler dis =
                    ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
                Address seed = addr(s & ~1);
                dis.disassemble(seed, new AddressSet(seed, addr(s + 0x300)), false);
            } catch (Exception e) {}
            Function f = fm.getFunctionContaining(a);
            if (f == null) {
                try {
                    f = fm.createFunction("fn_" + Long.toHexString(s), a,
                            new AddressSet(a, addr(s + 0x200)), SourceType.USER_DEFINED);
                } catch (Exception e) {
                    w.write(String.format("### create failed at 0x%X: %s\n\n", s, e.getMessage()));
                    continue;
                }
            }
            DecompileResults res = dec.decompileFunction(f, 120, monitor);
            w.write(String.format("##### fn %s @ 0x%X #####\n", f.getName(), f.getEntryPoint().getOffset()));
            if (res.decompileCompleted()) {
                w.write(res.getDecompiledFunction().getC() + "\n");
            } else {
                w.write("decompile failed: " + res.getErrorMessage() + "\n\n");
            }
        }
        w.close();
        println("DONE missing");
    }
}
