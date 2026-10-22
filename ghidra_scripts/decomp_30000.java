// Decompile EC functions that reference 0x30000/0x20000 constants.
import java.io.File;
import java.io.FileWriter;
import ghidra.app.decompiler.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.Address;

public class decomp_30000 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }

    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "ec_30000.txt"));
        FunctionManager fm = currentProgram.getFunctionManager();
        long[] sites = { 0x35a6, 0x780a, 0xdc26, 0x106d6, 0x10794, 0x10858, 0x10970,
                         0x16a7e, 0x23926, 0x2600c, 0x1dac2, 0x28eef, 0x2a6db, 0x2afd6 };
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);
        java.util.Set<Function> done = new java.util.HashSet<>();
        for (long s : sites) {
            Function f = fm.getFunctionContaining(addr(s));
            if (f == null) {
                try {
                    ghidra.program.disassemble.Disassembler dis =
                        ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
                    Address seed = addr(s & ~1);
                    dis.disassemble(seed, new ghidra.program.model.address.AddressSet(seed, addr(s + 0x600)), false);
                    new ghidra.app.cmd.function.CreateFunctionCmd(addr(s & ~1)).applyTo(currentProgram, monitor);
                } catch (Exception e) {}
                f = fm.getFunctionContaining(addr(s));
            }
            if (f == null) { w.write(String.format("### no function at 0x%X\n\n", s)); continue; }
            if (done.contains(f)) continue;
            done.add(f);
            DecompileResults res = dec.decompileFunction(f, 120, monitor);
            w.write(String.format("##### fn %s @ 0x%X (site 0x%X) #####\n",
                f.getName(), f.getEntryPoint().getOffset(), s));
            if (res != null && res.getDecompiledFunction() != null) {
                w.write(res.getDecompiledFunction().getC());
            } else { w.write("(decompile failed)\n"); }
            w.write("\n\n");
        }
        w.close();
        println("done -> ec_30000.txt");
    }
}
