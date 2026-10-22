// Headless postscript: CF-SZ5 EC firmware keyboard-path analysis (Java).
// Pass 1: all instructions with scalar/address operands in 0x29000-0x29800
// Pass 2: reference-manager xrefs to key structures
// Pass 3: decompile key functions
// Pass 4: disassembly dump of the dispatcher neighborhood
import java.io.File;
import java.io.FileWriter;
import java.util.*;

import ghidra.app.decompiler.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.*;
import ghidra.program.model.lang.OperandType;
import ghidra.program.model.listing.*;
import ghidra.program.model.scalar.Scalar;
import ghidra.program.model.symbol.*;
import ghidra.program.model.pcode.PcodeOp;

public class ec_analysis extends GhidraScript {

    Address addr(long a) {
        return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a);
    }

    @Override
    public void run() throws Exception {
        File outDir = new File("C://Users//<user>//workspaces//CF-SZ5-handoff//analysis//ghidra_out");
        outDir.mkdirs();
        FileWriter log = new FileWriter(new File(outDir, "report.txt"));

        FunctionManager fm = currentProgram.getFunctionManager();
        Listing listing = currentProgram.getListing();
        ReferenceManager rm = currentProgram.getReferenceManager();

        // ---------- pass 1: scan instructions for operands in 0x29000-0x29800 ----------
        log.write("=== instructions referencing 0x29000-0x29800 ===\n");
        Map<Long, List<String>> hits = new TreeMap<>();
        InstructionIterator it = listing.getInstructions(true);
        while (it.hasNext()) {
            Instruction i = it.next();
            long iv = i.getAddress().getOffset();
            if (iv > 0x29000 && iv < 0x29800) continue; // skip data region itself
            for (int n = 0; n < i.getNumOperands(); n++) {
                for (Object o : i.getOpObjects(n)) {
                    long v = -1;
                    if (o instanceof Scalar) v = ((Scalar) o).getValue() & 0xFFFFFFFFL;
                    else if (o instanceof Address) v = ((Address) o).getOffset() & 0xFFFFFFFFL;
                    if (v >= 0x29000 && v <= 0x29800) {
                        Function f = fm.getFunctionContaining(i.getAddress());
                        hits.computeIfAbsent(v, k -> new ArrayList<>()).add(
                            String.format("    @0x%05X  %-42s in %s", iv, i.toString(),
                                f != null ? f.getName() : "?"));
                    }
                }
            }
        }
        for (Map.Entry<Long, List<String>> e : hits.entrySet()) {
            log.write(String.format("0x%05X (%d refs)\n", e.getKey(), e.getValue().size()));
            Set<Long> seen = new HashSet<>();
            for (String s : e.getValue()) {
                long line = Long.parseLong(s.trim().split("//s+")[0].substring(3), 16) >> 4;
                if (seen.add(line)) log.write(s + "\n");
            }
        }

        // ---------- pass 2: xrefs from reference manager ----------
        log.write("\n=== reference-manager xrefs ===\n");
        long[] targets = {0x29454, 0x29468, 0x2949C, 0x2951C, 0x2959C, 0x2961C, 0x29764,
                          0x290FC, 0x29778, 0x297DC, 0x28FDC, 0x29400, 0x293D9, 0x29742};
        for (long t : targets) {
            ReferenceIterator refs = rm.getReferencesTo(addr(t));
            log.write(String.format("to 0x%05X:\n", t));
            while (refs.hasNext()) {
                Reference r = refs.next();
                Function f = fm.getFunctionContaining(r.getFromAddress());
                log.write(String.format("    from %s type=%s in %s\n",
                    r.getFromAddress(), r.getReferenceType(),
                    f != null ? f.getName() : "?"));
            }
        }

        // ---------- pass 3: decompile key functions ----------
        log.write("\n=== decompilation ===\n");
        DecompInterface dec = new DecompInterface();
        dec.openProgram(currentProgram);
        long[] fnAddrs = {0xFFF4, 0x100AC, 0x79A0, 0x15D34, 0x15D84, 0x1809C, 0x55BC, 0x55D4,
                          0x16148, 0x179B2, 0x27F30, 0xFF9C, 0x3C30, 0x8544, 0x1000C, 0x733E,
                          0x22B1E, 0x8582, 0x8580, 0x165B8, 0x165D8, 0x1799C, 0x18080, 0x18138,
                          0x559C, 0xE458, 0xE4C0, 0xE528, 0x17FEC, 0x15224, 0x15274, 0xFCC8,
                          0xFC8C, 0x12210, 0x24C80, 0x25820};
        for (long a : fnAddrs) {
            Function f = fm.getFunctionAt(addr(a));
            if (f == null) f = fm.getFunctionContaining(addr(a));
            if (f == null) {
                // try to create
                try {
                    f = createFunction(addr(a), "fn_" + Long.toHexString(a));
                } catch (Exception ex) { /* ignore */ }
            }
            if (f == null) { log.write(String.format("no function at 0x%05X\n", a)); continue; }
            DecompileResults res = dec.decompileFunction(f, 120, monitor);
            if (!res.decompileCompleted()) {
                log.write(String.format("decompile failed 0x%05X: %s\n", a, res.getErrorMessage()));
                continue;
            }
            String src = res.getDecompiledFunction().getC();
            log.write(String.format("\n----- 0x%05X %s -----\n%s\n", a, f.getName(), src));
            FileWriter fw = new FileWriter(new File(outDir, String.format("fn_%05X.c", a)));
            fw.write(src); fw.close();
        }

        // ---------- pass 4: dump all functions that reference tables A-D ----------
        log.write("\n=== functions containing refs to A/B/C/D bases ===\n");
        Set<Function> fns = new HashSet<>();
        for (long base : new long[]{0x2949C, 0x2951C, 0x2959C, 0x2961C}) {
            for (List<String> l : hits.values()) { /* placeholder */ break; }
        }
        // reuse hits map: group by function name from the strings
        Map<String, List<String>> byFn = new TreeMap<>();
        for (Map.Entry<Long, List<String>> e : hits.entrySet()) {
            for (String s : e.getValue()) {
                String fn = s.substring(s.lastIndexOf(" in ") + 4).trim();
                byFn.computeIfAbsent(fn, k -> new ArrayList<>()).add(
                    String.format("0x%05X %s", e.getKey(), s.trim()));
            }
        }
        for (Map.Entry<String, List<String>> e : byFn.entrySet()) {
            log.write("function " + e.getKey() + ":\n");
            for (String s : e.getValue()) log.write("   " + s + "\n");
        }

        // ---------- pass 5: dispatcher neighborhood disassembly ----------
        FileWriter d = new FileWriter(new File(outDir, "dispatch_0FFF4.txt"));
        InstructionIterator i2 = listing.getInstructions(addr(0xFF80), true);
        while (i2.hasNext()) {
            Instruction ins = i2.next();
            if (ins.getAddress().getOffset() > 0x10300) break;
            d.write(ins.getAddress() + "  " + ins + "\n");
        }
        d.close();

        log.close();
        println("DONE - output in " + outDir);
    }
}
