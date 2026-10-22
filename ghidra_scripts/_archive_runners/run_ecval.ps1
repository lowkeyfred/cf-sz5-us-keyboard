Set-Location C:\Users\frederich\workspaces\CF-SZ5-handoff\analysis
$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-21.0.12.101-hotspot"
$env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
& .\ghidra_12.1.4_PUBLIC\support\analyzeHeadless.bat ghidra_proj ec_image `
    -import C:\Users\frederich\workspaces\CF-SZ5-handoff\analysis\ec_image_pristine.bin `
    -processor ARCompact:LE:32:default `
    -scriptPath C:\Users\frederich\workspaces\CF-SZ5-handoff\analysis\ghidra_scripts `
    -postscript decomp_ecval.java `
    -deleteProject 2>&1 | Out-File -Encoding utf8 ecval_log.txt
