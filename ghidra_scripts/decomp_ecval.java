// Decompile EC-side validation candidates: bytesum site + tag-compare sites.
import java.io.File;
import java.io.FileWriter;
import ghidra.app.decompiler.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;

public class decomp_ecval extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }

    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "ec_validate.txt"));
        FunctionManager fm = currentProgram.getFunctionManager();
        long[] sites = { 0x18383, 0x377f, 0xdc55, 0xfe07, 0x16b77, 0x185a5, 0x1c27b, 0x254f1, 0x64ef };
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
                    dis.disassemble(seed, new AddressSet(seed, addr(s + 0x400)), false);
                    ghidra.app.cmd.function.CreateFunctionCmd cf =
                        new ghidra.app.cmd.function.CreateFunctionCmd(addr(s & ~1));
                    cf.applyTo(currentProgram, monitor);
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
        println("done -> ec_validate.txt");
    }
}
