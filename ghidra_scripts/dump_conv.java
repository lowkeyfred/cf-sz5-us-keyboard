import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.SourceType;

public class dump_conv extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//<user>//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "conv.txt"));
        ghidra.program.disassemble.Disassembler dis =
            ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
        for (long s : new long[]{0x123A4, 0x12438, 0x12464, 0x1F0AC}) {
            Address seed = addr(s & ~1);
            try { dis.disassemble(seed, new AddressSet(seed, addr(s + 0x200)), false); } catch (Exception e) {}
        }
        Listing listing = currentProgram.getListing();
        for (long[] r : new long[][]{{0x12400, 0x124A0}, {0x1F0A0, 0x1F200}}) {
            w.write(String.format("=== 0x%X - 0x%X ===\n", r[0], r[1]));
            InstructionIterator it = listing.getInstructions(addr(r[0]), true);
            while (it.hasNext()) {
                Instruction i = it.next();
                long off = i.getAddress().getOffset();
                if (off > r[1]) break;
                w.write(String.format("%08X  %s\n", off, i.toString()));
            }
        }
        // decompile 0x1F0AC if possible
        FunctionManager fm = currentProgram.getFunctionManager();
        Function f = fm.getFunctionContaining(addr(0x1F0AC));
        if (f != null) {
            DecompInterface dec = new DecompInterface();
            dec.openProgram(currentProgram);
            DecompileResults res = dec.decompileFunction(f, 120, monitor);
            w.write("\n=== decompile 0x1F0AC ===\n");
            w.write(res.decompileCompleted() ? res.getDecompiledFunction().getC() : res.getErrorMessage());
            w.write("\n");
        }
        w.close();
        println("DONE conv");
    }
}
