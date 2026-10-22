Set-Location C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis
$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-21.0.12.101-hotspot"
$env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
& .\ghidra_12.1.4_PUBLIC\support\analyzeHeadless.bat ghidra_proj sz5ec `
    -import C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\ec_firmware.bin `
    -processor ARCompact:LE:32:default `
    -scriptPath C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\ghidra_scripts `
    -postscript scan_hunt.java `
    -noanalysis -deleteProject 2>&1 | Select-String -Pattern "error|Error|Exception|Caused|DONE" -Context 2,4
