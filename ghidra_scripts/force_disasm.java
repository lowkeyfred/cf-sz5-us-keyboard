// Force linear disassembly of undecoded regions; find callers of key functions.
import java.io.File;
import java.io.FileWriter;
import java.util.*;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.flatapi.FlatProgramAPI;
import ghidra.program.disassemble.Disassembler;
import ghidra.program.disassemble.DisassemblerMessageListener;
import ghidra.util.task.ConsoleTaskMonitor;
import ghidra.program.model.symbol.FlowType;

public class force_disasm extends GhidraScript {

    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }

    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//frederich//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "forced.txt"));

        Disassembler dis = Disassembler.getDisassembler(currentProgram, monitor, null);

        // force disassembly of key ranges
        long[][] ranges = {
            {0x79A0, 0x7A1C},
            {0x10C00, 0x10FA0},
            {0x10000, 0x10200},
        };
        for (long[] r : ranges) {
            AddressSetView asv = new AddressSet(addr(r[0]), addr(r[1]));
            dis.disassemble(addr(r[0]), asv, false);
        }

        // dump the forced ranges
        Listing listing = currentProgram.getListing();
        for (long[] r : ranges) {
            w.write(String.format("=== forced disasm 0x%X - 0x%X ===\n", r[0], r[1]));
            InstructionIterator it = listing.getInstructions(addr(r[0]), true);
            while (it.hasNext()) {
                Instruction i = it.next();
                long off = i.getAddress().getOffset();
                if (off > r[1]) break;
                w.write(String.format("%08X  %s\n", off, i.toString()));
            }
            w.write("\n");
        }

        // full linear sweep to find callers of key targets
        w.write("=== forced full sweep 0x1000-0x29000, calls only ===\n");
        AddressSetView full = new AddressSet(addr(0x1000), addr(0x29000));
        dis.disassemble(addr(0x1000), full, false);
        InstructionIterator it2 = listing.getInstructions(addr(0x1000), true);
        long[] targets = {0x79A0, 0x79AC, 0x79B4, 0x7A1C, 0x100AC, 0xFFF4, 0x15D34, 0x15D84,
                          0x1809C, 0x656C, 0x83F4, 0x10D7C, 0x27F30, 0x15D50, 0x16148};
        Set<Long> tset = new HashSet<>();
        for (long t : targets) tset.add(t);
        int n = 0, total = 0;
        while (it2.hasNext()) {
            Instruction i = it2.next();
            long off = i.getAddress().getOffset();
            if (off > 0x29000) break;
            FlowType ft = i.getFlowType();
            if (ft == null || !ft.isCall()) continue;
            total++;
            Address[] flows = i.getFlows();
            for (Address f : flows) {
                long t = f.getOffset();
                if (tset.contains(t)) {
                    w.write(String.format("CALLER 0x%08X  %-40s -> 0x%08X\n", off, i.toString(), t));
                    n++;
                }
            }
        }
        w.write(String.format("calls total %d, matched %d\n", total, n));
        w.close();
        println("DONE forced");
    }
}
