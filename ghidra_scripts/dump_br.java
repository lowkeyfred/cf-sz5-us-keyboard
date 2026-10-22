import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.mem.Memory;

public class dump_br extends GhidraScript {
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/frederich/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "branches.txt"));
        Listing listing = currentProgram.getListing();
        Memory mem = currentProgram.getMemory();
        InstructionIterator it = listing.getInstructions(currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(0x1000), true);
        int n = 0;
        while (it.hasNext()) {
            Instruction i = it.next();
            long off = i.getAddress().getOffset();
            if (off > 0x29000) break;
            String m = i.getMnemonicString();
            if (m.equals("bl") || m.equals("bl.d") || m.equals("b") || m.equals("b.d") || m.equals("j") || m.equals("j.d") || m.equals("bl.j") || m.equals("bl.j.d")) {
                Address[] fl = i.getFlows();
                if (fl == null || fl.length != 1) continue;
                StringBuilder sb = new StringBuilder();
                for (byte b : i.getBytes()) sb.append(String.format("%02x", b));
                w.write(String.format("%x %x %s %s" + (char)10, off, fl[0].getOffset(), m, sb));
                n++;
            }
        }
        w.write("total " + n + (char)10);
        w.close();
        println("DONE dump_br " + n);
    }
}
