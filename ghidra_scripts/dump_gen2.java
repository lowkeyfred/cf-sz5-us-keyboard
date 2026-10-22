import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class dump_gen2 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//frederich//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "gen2.txt"));
        ghidra.program.disassemble.Disassembler dis =
            ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
        for (long s : new long[]{0x123A2, 0x79A2, 0x79A4}) {
            Address seed = addr(s);
            try { dis.disassemble(seed, new AddressSet(seed, addr(s + 0x180)), false); } catch (Exception e) {}
        }
        Listing listing = currentProgram.getListing();
        for (long[] r : new long[][]{{0x123A0, 0x124C0}, {0x7990, 0x7A1C}}) {
            w.write(String.format("=== 0x%X - 0x%X ===\n", r[0], r[1]));
            InstructionIterator it = listing.getInstructions(addr(r[0]), true);
            while (it.hasNext()) {
                Instruction i = it.next();
                long off = i.getAddress().getOffset();
                if (off > r[1]) break;
                w.write(String.format("%08X  %s\n", off, i.toString()));
            }
        }
        FunctionManager fm = currentProgram.getFunctionManager();
        for (long s : new long[]{0x123A4, 0x79A0}) {
            Function f = fm.getFunctionContaining(addr(s));
            w.write(String.format("containing 0x%X: %s (0x%X-0x%X)\n", s,
                f == null ? "null" : f.getName(),
                f == null ? 0 : f.getEntryPoint().getOffset(),
                f == null ? 0 : (f.getBody().getMaxAddress() == null ? 0 : f.getBody().getMaxAddress().getOffset())));
        }
        w.close();
        println("DONE gen2");
    }
}
