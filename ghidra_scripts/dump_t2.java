import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class dump_t2 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "t2.txt"));
        ghidra.program.disassemble.Disassembler dis =
            ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
        long[] seeds = {0x18014, 0x179c0, 0x12454, 0x1245c, 0x165ca};
        for (long s : seeds) {
            Address seed = addr(s);
            try { dis.disassemble(seed, new AddressSet(seed, addr(s + 0x60)), false); } catch (Exception e) {}
        }
        Listing listing = currentProgram.getListing();
        for (long s : seeds) {
            w.write(String.format("===== 0x%X =====\n", s));
            InstructionIterator it = listing.getInstructions(addr(s), true);
            int n = 0;
            while (it.hasNext() && n < 24) {
                Instruction i = it.next();
                long off = i.getAddress().getOffset();
                if (off < s || off > s + 0x58) continue;
                w.write(String.format("%08X  %s\n", off, i.toString()));
                n++;
            }
        }
        w.close();
        println("DONE gates");
    }
}
