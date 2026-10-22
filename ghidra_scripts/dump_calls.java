// Dump selector-helper caller region + scan all call instructions.
import java.io.File;
import java.io.FileWriter;
import java.util.*;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.lang.OperandType;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.Address;
import ghidra.program.model.symbol.FlowType;

public class dump_calls extends GhidraScript {

    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }

    void dumpDisasm(FileWriter w, long start, long end) throws Exception {
        w.write(String.format("=== disasm 0x%X - 0x%X ===\n", start, end));
        Listing listing = currentProgram.getListing();
        InstructionIterator it = listing.getInstructions(addr(start), true);
        while (it.hasNext()) {
            Instruction i = it.next();
            long off = i.getAddress().getOffset();
            if (off > end) break;
            w.write(String.format("%08X  %s\n", off, i.toString()));
        }
        w.write("\n");
    }

    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//frederich//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "calls.txt"));

        dumpDisasm(w, 0x79A0, 0x7B00);     // selector helper + cmp 0x80 function
        dumpDisasm(w, 0x10D00, 0x10FA0);   // mystery dispatcher prologue

        // scan all calls
        w.write("=== all call/branch-and-link instructions ===\n");
        Listing listing = currentProgram.getListing();
        InstructionIterator it = listing.getInstructions(true);
        int n = 0;
        while (it.hasNext()) {
            Instruction i = it.next();
            FlowType ft = i.getFlowType();
            if (ft == null || !ft.isCall()) continue;
            Address[] flows = i.getFlows();
            String tgt = flows.length > 0 ? String.format("%08X", flows[0].getOffset()) : "????";
            w.write(String.format("%08X  %-40s -> %s\n", i.getAddress().getOffset(), i.toString(), tgt));
            n++;
        }
        w.write("total calls: " + n + "\n");
        w.close();
        println("DONE calls");
    }
}
