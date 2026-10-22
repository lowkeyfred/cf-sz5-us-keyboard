// Final comprehensive pass: seed all prologues, dump key functions,
// scan for hardcoded scancode constants, full call list.
import java.io.File;
import java.io.FileWriter;
import java.util.*;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.disassemble.Disassembler;
import ghidra.program.model.scalar.Scalar;
import ghidra.program.model.symbol.FlowType;

public class final_pass extends GhidraScript {

    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }

    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//<user>//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "final.txt"));
        Listing listing = currentProgram.getListing();

        // read prologue seeds
        java.util.List<Long> seeds = new ArrayList<>();
        Scanner sc = new Scanner(new File("C://Users//<user>//workspaces//CF-SZ5-handoff//analysis//ghidra_scripts//prologues.txt"));
        while (sc.hasNextLine()) seeds.add(Long.parseLong(sc.nextLine().trim(), 16));
        sc.close();
        seeds.add(0x79A2L); seeds.add(0x79A4L); seeds.add(0x79A6L);
        seeds.add(0x10D7CL);

        Disassembler dis = Disassembler.getDisassembler(currentProgram, monitor, null);
        for (long s : seeds) {
            try {
                AddressSetView asv = new AddressSet(addr(s), addr(Math.min(s + 0x400, 0x29000)));
                dis.disassemble(addr(s), asv, false);
            } catch (Exception e) { /* ignore */ }
        }
        w.write("seeded " + seeds.size() + " functions\n\n");

        // scan for hardcoded scancode constants
        w.write("=== instructions with scalar operands == key codes ===\n");
        long[] codes = {0x55, 0x0D, 0x70, 0x71, 0x73, 0xD2, 0xD3, 0xDD, 0xB8, 0x5D,
                        0xF0, 0xF1, 0xAF, 0x91, 0xEC, 0xE9, 0xFC, 0x5C, 0x6C, 0x69, 0x7D};
        Set<Long> cset = new HashSet<>();
        for (long c : codes) cset.add(c);
        InstructionIterator it = listing.getInstructions(addr(0x1000), true);
        while (it.hasNext()) {
            Instruction i = it.next();
            long off = i.getAddress().getOffset();
            if (off > 0x29000) break;
            String m = i.getMnemonicString();
            if (!(m.startsWith("mov") || m.startsWith("cmp") || m.startsWith("add") || m.startsWith("sub"))) continue;
            for (int n = 0; n < i.getNumOperands(); n++) {
                for (Object o : i.getOpObjects(n)) {
                    if (o instanceof Scalar) {
                        long v = ((Scalar) o).getValue() & 0xFFFFFFFFL;
                        if (cset.contains(v) && v > 0x40) { // skip tiny imm
                            w.write(String.format("%08X  %s\n", off, i.toString()));
                            break;
                        }
                    }
                }
            }
        }

        // full call list
        w.write("\n=== all calls (firmware targets) ===\n");
        InstructionIterator it2 = listing.getInstructions(addr(0x1000), true);
        int total = 0;
        Map<Long, List<String>> byTarget = new TreeMap<>();
        while (it2.hasNext()) {
            Instruction i = it2.next();
            long off = i.getAddress().getOffset();
            if (off > 0x29000) break;
            FlowType ft = i.getFlowType();
            if (ft == null || !ft.isCall()) continue;
            total++;
            for (Address f : i.getFlows()) {
                long t = f.getOffset();
                if (t >= 0x100 && t < 0x29000) {
                    byTarget.computeIfAbsent(t, k -> new ArrayList<>())
                            .add(String.format("%08X  %s", off, i.toString()));
                }
            }
        }
        long[] interesting = {0x79A0, 0x79A2, 0x79A4, 0x79A6, 0x7A1C, 0x100AC, 0xFFF4, 0x15D34,
                              0x15D84, 0x15D50, 0x1809C, 0x656C, 0x83F4, 0x10D7C, 0x27F30,
                              0x16148, 0x55BC, 0x55D4, 0x3510, 0x3540, 0x3570, 0x7F30,
                              0x12384, 0x165B4, 0x1964C};
        w.write("total calls: " + total + "\n\n-- interesting targets --\n");
        for (long t : interesting) {
            List<String> l = byTarget.get(t);
            if (l == null) continue;
            w.write(String.format("to 0x%05X (%d):\n", t, l.size()));
            for (String s : l) w.write("   " + s + "\n");
        }
        w.write("\n-- all targets with 1 caller --\n");
        for (Map.Entry<Long, List<String>> e : byTarget.entrySet()) {
            if (e.getValue().size() == 1)
                w.write(String.format("0x%05X <- %s\n", e.getKey(), e.getValue().get(0)));
        }
        w.close();
        println("DONE final");
    }
}
