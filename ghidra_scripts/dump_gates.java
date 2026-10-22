import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class dump_gates extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "gates.txt"));
        ghidra.program.disassemble.Disassembler dis =
            ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
        long[] seeds = {0x1613c, 0x16148, 0x165b4, 0x165d4, 0x1796c, 0x1807c, 0x18134,
                        0x5580, 0xe438, 0xe4a0, 0xe508, 0x17fb0, 0x15204, 0x15270,
                        0x207bc, 0x7128, 0x10d7c, 0x123a4};
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
