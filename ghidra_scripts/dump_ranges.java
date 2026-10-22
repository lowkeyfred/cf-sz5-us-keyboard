// Dump disassembly + data for specific ranges (Ghidra headless postscript).
import java.io.File;
import java.io.FileWriter;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.Address;

public class dump_ranges extends GhidraScript {

    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }

    void dumpDisasm(FileWriter w, long start, long end) throws Exception {
        w.write(String.format("=== disasm 0x%X - 0x%X ===\n", start, end));
        Listing listing = currentProgram.getListing();
        // ensure instructions exist
        listing.getInstructions(addr(start), true);
        InstructionIterator it = listing.getInstructions(addr(start), true);
        while (it.hasNext()) {
            Instruction i = it.next();
            long off = i.getAddress().getOffset();
            if (off > end) break;
            w.write(String.format("%08X  %s\n", off, i.toString()));
        }
        w.write("\n");
    }

    void dumpData(FileWriter w, String name, long start, int len) throws Exception {
        w.write(String.format("=== data %s @0x%X len %d ===\n", name, start, len));
        byte[] buf = new byte[len];
        currentProgram.getMemory().getBytes(addr(start), buf);
        for (int r = 0; r * 16 < len; r++) {
            StringBuilder hex = new StringBuilder();
            StringBuilder asc = new StringBuilder();
            for (int c = 0; c < 16 && r * 16 + c < len; c++) {
                int b = buf[r * 16 + c] & 0xFF;
                hex.append(String.format("%02X ", b));
                asc.append(b >= 0x20 && b < 0x7F ? (char) b : '.');
            }
            w.write(String.format("%08X  %-48s %s\n", start + r * 16, hex, asc));
        }
        w.write("\n");
    }

    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//<user>//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        FileWriter w = new FileWriter(new File(outDir, "ranges.txt"));

        dumpDisasm(w, 0x10F40, 0x11010);   // handler table dispatch
        dumpDisasm(w, 0x7980, 0x7A20);     // selector helper 0x79A0
        dumpDisasm(w, 0x12360, 0x12440);   // translator 0x12384
        dumpDisasm(w, 0xFCB0, 0xFDD0);     // fn_fcc8 / fn_fc8c bodies

        dumpData(w, "idx_table", 0x29314, 0x88);      // dispatch index table
        dumpData(w, "handlers_make", 0x29778, 0x68);  // 26 x 4-byte ptrs
        dumpData(w, "handlers_break", 0x297DC, 0x68); // 26 x 4-byte ptrs
        dumpData(w, "nav_table", 0x293D9 - 8, 0x30);  // nav-key table neighborhood

        w.close();
        println("DONE ranges");
    }
}
