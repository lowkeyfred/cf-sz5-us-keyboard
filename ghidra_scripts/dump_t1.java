import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class dump_t1 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "t1.txt"));
        ghidra.program.disassemble.Disassembler dis =
            ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
        long[] seeds = {0x165b8, 0x165d8, 0x1799c, 0x18138, 0x559c, 0x17fec, 0x15224,
                        0x15274, 0xfcc8, 0x12438, 0x12444, 0x1244a, 0x12452, 0x12464};
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
