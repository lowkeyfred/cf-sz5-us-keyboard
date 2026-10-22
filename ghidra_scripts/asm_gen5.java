import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.app.plugin.assembler.*;

public class asm_gen5 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "asm_gen5.txt"));
        Assembler asm = Assemblers.getAssembler(currentProgram);
        String[] tests = { "j_s blink", "j_s r5", "b 0x10db2", "b 0x10db0" };
        long scratch = 0x286ac;
        for (String t : tests) {
            try {
                InstructionIterator ii = asm.assemble(addr(scratch), t);
                Instruction i = ii.next();
                StringBuilder sb = new StringBuilder();
                for (byte b : i.getBytes()) sb.append(String.format("%02x", b));
                w.write(String.format("%-12s OK %s (len %d)" + (char)10, t, sb, i.getLength()));
            } catch (Exception e) {
                String m = e.getMessage(); if (m != null && m.length() > 80) m = m.substring(0, 80);
                w.write(String.format("%-12s FAIL: %s" + (char)10, t, m));
            }
            scratch += 8;
        }
        w.close();
        println("DONE asm_gen5");
    }
}
