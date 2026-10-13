# Run from Windows PowerShell. Uses Typst or the existing VS Code Tinymist extension.
$ErrorActionPreference = 'Stop'
$reportRoot = Split-Path -Parent $PSScriptRoot
$compilerCommand = Get-Command typst, tinymist -ErrorAction SilentlyContinue |
    Select-Object -First 1
if ($compilerCommand) {
    $compilerPath = $compilerCommand.Source
} else {
    $extensionRoots = @(
        (Join-Path $env:USERPROFILE '.vscode\extensions'),
        (Join-Path $env:USERPROFILE '.vscode-insiders\extensions')
    )
    $compilerFile = $extensionRoots | ForEach-Object {
        if (Test-Path $_) {
            Get-ChildItem -Path $_ -Directory -Filter 'myriad-dreamin.tinymist-*' |
                ForEach-Object {
                    Get-Item (Join-Path $_.FullName 'out\tinymist.exe') -ErrorAction SilentlyContinue
                }
        }
    } | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    if (-not $compilerFile) {
        throw 'Typst or the VS Code Tinymist extension was not found.'
    }
    $compilerPath = $compilerFile.FullName
}
$outputDirectory = Join-Path $reportRoot 'build'
New-Item -Path $outputDirectory -ItemType Directory -Force | Out-Null
$reportFiles = @(Get-ChildItem -Path $reportRoot -Directory |
    Where-Object { $_.Name -match '^[ABD]-' } |
    ForEach-Object { Get-ChildItem -Path $_.FullName -File -Filter '*.typ' } |
    Sort-Object FullName)
$reportFiles += Get-Item (Join-Path $reportRoot 'writing-template.typ')
$failedReports = @()
foreach ($reportFile in $reportFiles) {
    $outputPath = Join-Path $outputDirectory ($reportFile.BaseName + '.pdf')
    & $compilerPath compile --root $reportRoot $reportFile.FullName $outputPath
    if ($LASTEXITCODE -ne 0) {
        $failedReports += $reportFile.Name
    }
}
if ($failedReports.Count -gt 0) {
    throw ('Compilation failed: ' + ($failedReports -join ', '))
}
Write-Host ($reportFiles.Count.ToString() + ' PDFs generated in build/.')
