# Parameterized Ghidra headless runner for the CF-SZ5 EC image.
# Requires a Ghidra build with ARCompact processor support
# (nioss-ledger/ghidra fork -> processor id ARCompact:LE:32:default).
#
# Usage:
#   .\run-headless.ps1 -GhidraDir C:\tools\ghidra_12.1.4_PUBLIC `
#       -ProjectDir <repo>\ghidra_proj -Image <work>\ec_image_pristine.bin `
#       -Script decomp_handlers.java [-Log out.txt] [-KeepProject]
#
# Without -KeepProject the temporary Ghidra project is deleted after the run.
param(
    [Parameter(Mandatory = $true)][string]$GhidraDir,
    [Parameter(Mandatory = $true)][string]$ProjectDir,
    [Parameter(Mandatory = $true)][string]$Image,
    [Parameter(Mandatory = $true)][string]$Script,
    [string]$Log = "ecval_log.txt",
    [switch]$KeepProject
)

$java = Join-Path $env:JAVA_HOME "bin\java.exe"
if (-not $env:JAVA_HOME) { $java = "java" }

$runner = Join-Path $GhidraDir "support\analyzeHeadless.bat"
$scriptDir = $PSScriptRoot
$projName = "ec_image_" + ([IO.Path]::GetFileNameWithoutExtension($Script) -replace '[^A-Za-z0-9]', '')

$args = @(
    $ProjectDir, $projName,
    "-import", $Image,
    "-processor", "ARCompact:LE:32:default",
    "-scriptPath", $scriptDir,
    "-postscript", $Script
)
if (-not $KeepProject) { $args += "-deleteProject" }

& $runner @args 2>&1 | Out-File -Encoding utf8 $Log
Write-Host "done -> $Log"
