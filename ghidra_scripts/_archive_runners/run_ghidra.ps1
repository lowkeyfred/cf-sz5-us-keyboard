# One-shot: extract Ghidra, install ARC processor module, run headless analysis.
# Requires: ghidra_12.1.4_PUBLIC.zip in this directory; JDK 21 present.
Set-Location C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis

if (-not (Test-Path ghidra_12.1.4_PUBLIC\support\analyzeHeadless.bat)) {
    Write-Host "extracting..."
    tar -xf ghidra_12.1.4_PUBLIC.zip
}

if (-not (Test-Path ghidra_12.1.4_PUBLIC\Ghidra\Processors\ARC\data\languages\ARCompact.ldefs)) {
    Write-Host "installing ARC module..."
    Copy-Item -Recurse ghidra-arc-module\Ghidra\Processors\ARC ghidra_12.1.4_PUBLIC\Ghidra\Processors\
}

$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-21.0.12.101-hotspot"
$env:PATH = "$env:JAVA_HOME\bin;$env:PATH"

New-Item -ItemType Directory -Force ghidra_proj | Out-Null
Write-Host "running headless analysis (this takes a few minutes)..."
& .\ghidra_12.1.4_PUBLIC\support\analyzeHeadless.bat ghidra_proj sz5ec `
    -import C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\ec_firmware.bin `
    -processor ARCompact:LE:32:default `
    -scriptPath C:\Users\<user>\workspaces\CF-SZ5-handoff\analysis\ghidra_scripts `
    -postscript ec_analysis.py `
    -deleteProject 2>&1 | Select-Object -Last 40
Write-Host "exit=$LASTEXITCODE"
