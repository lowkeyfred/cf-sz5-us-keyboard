// Decompile all functions containing hardcoded scancode constants.
import java.io.File;
import java.io.FileWriter;

import ghidra.app.decompiler.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;

public class decomp_sites extends GhidraScript {

    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }

    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//frederich//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "sites.txt"));
        FunctionManager fm = currentProgram.getFunctionManager();

        long[] sites = {
            0x423A, 0x6686, 0x67B0, 0x814C, 0x81A2, 0x8B72, 0x8DAE, 0x8E1A, 0x9052,
            0xB166, 0xBD5E, 0xE4FA, 0xEF3E, 0xFB98, 0x10182, 0x1168A, 0x119E8, 0x12214,
            0x12B6E, 0x130FE, 0x14EB8, 0x14F60, 0x162BA, 0x180C2, 0x18992, 0x1DEF8,
            0x1DF80, 0x1FA26, 0x1FA36, 0x20434, 0x20BCC, 0x210B6,
            0x10D7C, 0x656C, 0x3510, 0x3540, 0x3570, 0x165B4, 0x3C30, 0x83F4, 0x7A1C
        };
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);

        java.util.Set<Function> done = new java.util.HashSet<>();
        for (long s : sites) {
            Function f = fm.getFunctionContaining(addr(s));
            if (f == null) {
                // force disasm seed
                try {
                    ghidra.program.disassemble.Disassembler dis =
                        ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
                    Address seed = addr(s & ~1);
                    dis.disassemble(seed, new AddressSet(seed, addr(s + 0x200)), false);
                } catch (Exception e) {}
                f = fm.getFunctionContaining(addr(s));
            }
            if (f == null) { w.write(String.format("### no function at 0x%X\n\n", s)); continue; }
            if (done.contains(f)) continue;
            done.add(f);
            DecompileResults res = dec.decompileFunction(f, 120, monitor);
            w.write(String.format("##### fn %s @ 0x%X (site 0x%X) #####\n",
                    f.getName(), f.getEntryPoint().getOffset(), s));
            if (res.decompileCompleted()) {
                w.write(res.getDecompiledFunction().getC() + "\n");
            } else {
                w.write("decompile failed: " + res.getErrorMessage() + "\n");
            }
        }
        w.close();
        println("DONE sites: " + done.size() + " functions");
    }
}
