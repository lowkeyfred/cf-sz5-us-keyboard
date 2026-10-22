Set-Location C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis
$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-21.0.12.101-hotspot"
$env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
& .\ghidra_12.1.4_PUBLIC\support\analyzeHeadless.bat ghidra_proj sz5smm `
    -import C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\PcOemEcUpdateSmm.efi `
    -processor x86:LE:64:default `
    -scriptPath C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\ghidra_scripts `
    -postscript ecu_analyze20.java `
    -deleteProject 2>&1 | Out-File -Encoding utf8 ecu20_log.txt
