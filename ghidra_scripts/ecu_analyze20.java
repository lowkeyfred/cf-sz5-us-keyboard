import java.io.File;
import java.io.FileWriter;
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.app.cmd.disassemble.DisassembleCommand;
import ghidra.app.cmd.function.CreateFunctionCmd;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

public class ecu_analyze20 extends GhidraScript {
    Address addr(long a) { return currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(a); }
    FileWriter w;
    void out(String s) throws Exception { w.write(s + (char)10); }
    DecompInterface dec;
    @Override
    public void run() throws Exception {
        w = new FileWriter(new File("C:/Users/<user>/workspaces/CF-SZ5-handoff/analysis/ghidra_out/ecu_analyze20.txt"));
        dec = new DecompInterface(); dec.openProgram(currentProgram);
        // disassemble the validator region then create functions at every ret-followed boundary
        AddressSet set = new AddressSet(addr(0x9900), addr(0x9E00));
        DisassembleCommand dis = new DisassembleCommand(set, null);
        dis.applyTo(currentProgram, monitor);
        // create function at known instruction starts (from byte-scan we know ~0x9AAE area)
        long[] starts = {0x994C, 0x9A70, 0x9AAE, 0x9B20, 0x9B60, 0x9C00, 0x9C68};
        for (long s : starts) {
            Function f = currentProgram.getFunctionManager().getFunctionAt(addr(s));
            if (f == null) {
                CreateFunctionCmd cf = new CreateFunctionCmd(addr(s));
                cf.applyTo(currentProgram, monitor);
            }
        }
        FunctionIterator fi = currentProgram.getFunctionManager().getFunctions(addr(0x9800), true);
        while (fi.hasNext()) {
            Function f = fi.next();
            if (f.getEntryPoint().getOffset() > 0xA000) break;
            out("### FN " + f.getName() + " @0x" + f.getEntryPoint() + " - 0x" + f.getBody().getMaxAddress());
            DecompileResults res = dec.decompileFunction(f, 600, monitor);
            out(res.decompileCompleted() ? res.getDecompiledFunction().getC() : "ERR " + res.getErrorMessage());
            out("");
        }
        w.close();
        println("DONE ecu_analyze20");
    }
}
