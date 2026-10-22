import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.lang.*;
import ghidra.app.plugin.assembler.*;

public class asm_gen extends GhidraScript {
    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }
    String hexbytes(Instruction i) throws Exception {
        StringBuilder sb = new StringBuilder();
        for (byte b : i.getBytes()) sb.append(String.format("%02x", b));
        return sb.toString();
    }
    @Override
    public void run() throws Exception {
        File outDir = new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "asm_gen.txt"));
        Listing listing = currentProgram.getListing();
        Assembler asm = Assemblers.getAssembler(currentProgram);
        // cave at 0x286AA
        String[][] cave = {
            {"0x286aa", "ldb_s r1,[r13,0x1a]"},
            {"0x286ac", "cmp r0,0xbc"},
            {"0x286b0", "bne 0x286ba"},
            {"0x286b4", "mov_s r0,124"},
            {"0x286b6", "cmp r0,0xa0"},
            {"0x286ba", "bne 0x286c4"},
            {"0x286be", "mov_s r0,105"},
            {"0x286c0", "cmp r0,0x20"},
            {"0x286c4", "bne 0x286ce"},
            {"0x286c8", "mov_s r0,120"},
            {"0x286ca", "j 0x00010db2"},
        };
        // NOTE: addresses above are tentative; assemble sequentially and report real boundaries
        long cur = 0x286aa;
        for (String[] ins : cave) {
            try {
                InstructionIterator ii = asm.assemble(addr(cur), ins[1]);
                Instruction i = ii.next();
                w.write(String.format("%s  ; %-24s ; bytes %s  (len %d)" + (char)10,
                    i.getAddress(), ins[1], hexbytes(i), i.getLength()));
                cur += i.getLength();
            } catch (Exception e) {
                w.write(String.format("0x%x  ASM FAIL: %-24s : %s" + (char)10, cur, ins[1], e.getMessage()));
            }
        }
        // patch site
        for (String[] ins : new String[][]{
            {"0x10dac", "bl.d 0x00286aa"},
            {"0x10db0", "nop_s"},
        }) {
            try {
                InstructionIterator ii = asm.assemble(addr(Long.parseLong(ins[0].substring(2), 16)), ins[1]);
                Instruction i = ii.next();
                w.write(String.format("%s  ; %-24s ; bytes %s  (len %d)" + (char)10,
                    i.getAddress(), ins[1], hexbytes(i), i.getLength()));
            } catch (Exception e) {
                w.write(String.format("%s  ASM FAIL: %-24s : %s" + (char)10, ins[0], ins[1], e.getMessage()));
            }
        }
        w.close();
        println("DONE asm_gen");
    }
}
