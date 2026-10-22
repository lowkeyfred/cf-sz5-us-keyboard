import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class dump_conv2 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//frederich//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "conv2.txt"));
        ghidra.program.disassemble.Disassembler dis =
            ghidra.program.disassemble.Disassembler.getDisassembler(currentProgram, monitor, null);
        for (long s : new long[]{0x12400, 0x12418, 0x12428, 0x12454, 0x1245c}) {
            Address seed = addr(s);
            try { dis.disassemble(seed, new AddressSet(seed, addr(s + 0x80)), false); } catch (Exception e) {}
        }
        Listing listing = currentProgram.getListing();
        w.write("=== 0x123D0 - 0x124A0 ===\n");
        InstructionIterator it = listing.getInstructions(addr(0x123D0), true);
        while (it.hasNext()) {
            Instruction i = it.next();
            long off = i.getAddress().getOffset();
            if (off > 0x124A0) break;
            w.write(String.format("%08X  %s\n", off, i.toString()));
        }
        w.close();
        println("DONE conv2");
    }
}
