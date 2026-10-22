import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.disassemble.Disassembler;
import ghidra.program.model.mem.MemoryBlock;

public class dump_range extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "dump_range.txt"));
        Listing listing = currentProgram.getListing();
        Disassembler dis = Disassembler.getDisassembler(currentProgram, monitor, null);
        long[][] ranges = { {0x10da0, 0x10dc0}, {0x286ac, 0x286c0} };
        for (long[] r : ranges) {
            AddressSetView asv = new AddressSet(addr(r[0]), addr(r[1]));
            dis.disassemble(addr(r[0]), asv, false);
            w.write(String.format("--- 0x%X - 0x%X ---" + (char)10, r[0], r[1]));
            InstructionIterator it = listing.getInstructions(new AddressSet(addr(r[0]), addr(r[1])), true);
            while (it.hasNext()) {
                Instruction i = it.next();
                StringBuilder sb = new StringBuilder();
                for (byte b : i.getBytes()) sb.append(String.format("%02x", b));
                w.write(String.format("%08X  %-24s %s" + (char)10, i.getAddress().getOffset(), i, sb));
            }
        }
        w.close();
        println("DONE dump_range");
    }
}
