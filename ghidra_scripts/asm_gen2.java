import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.app.plugin.assembler.*;

public class asm_gen2 extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "asm_gen2.txt"));
        Assembler asm = Assemblers.getAssembler(currentProgram);
        String[] tests = {
            "mov_s r3,0xbc", "cmp r0,r3", "cmp_s r0,r3",
            "breq r0,0xbc,0x286e0", "breq_s r0,0xbc,0x286c0",
            "beq 0x286c0", "beq_s 0x286c0", "bne 0x286c0", "bne_s 0x286c0",
            "b 0x00010db2", "b_s 0x286c0", "bl 0x00286aa", "bl_s 0x286aa",
            "sub_s r0,r0,r3", "sub.f r0,r0,r3",
            "tst r0,r3", "tst_s r0,r3",
        };
        long scratch = 0x286aa;
        for (String t : tests) {
            try {
                InstructionIterator ii = asm.assemble(addr(scratch), t);
                Instruction i = ii.next();
                StringBuilder sb = new StringBuilder();
                for (byte b : i.getBytes()) sb.append(String.format("%02x", b));
                w.write(String.format("%-28s OK  %s  (len %d) @ scratch 0x%x" + (char)10, t, sb, i.getLength(), scratch));
                scratch += 8;
            } catch (Exception e) {
                String m = e.getMessage();
                if (m != null && m.length() > 90) m = m.substring(0, 90);
                w.write(String.format("%-28s FAIL: %s" + (char)10, t, m));
            }
        }
        w.close();
        println("DONE asm_gen2");
    }
}
