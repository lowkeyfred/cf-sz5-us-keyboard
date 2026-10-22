Set-Location C:\Users\frederich\workspaces\CF-SZ5-handoff\analysis
$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-21.0.12.101-hotspot"
$env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
& .\ghidra_12.1.4_PUBLIC\support\analyzeHeadless.bat ghidra_proj sz5ecu `
    -import C:\Users\frederich\workspaces\CF-SZ5-handoff\analysis\pfw_extract\EcUpdate_SZ5M123_V100L19.exe `
    -scriptPath C:\Users\frederich\workspaces\CF-SZ5-handoff\analysis\ghidra_scripts `
    -postscript ecu_analyze9.java `
    -deleteProject 2>&1 | Out-File -Encoding utf8 ecu9_log.txt
