<#
    DESCRIPTION
#>
param (
    [Parameter(mandatory=$true)]
    [string]$ResourceFolder
)

$CMD = ".\AddDataFromCSVFile.exe"

$FileLoot = "ItemsWithPoints.csv"
$PathBWLMC = Join-Path -Path $ResourceFolder -ChildPath "\bwl+mc"
$PathAQ40 = Join-Path -Path $ResourceFolder -ChildPath "\aq40"
$PathNaxx = Join-Path -Path $ResourceFolder -ChildPath "\naxx"

Function ListSRFiles($folder) { Get-ChildItem -Path $folder -File | Where-Object {$_.name -match "-sr_"} | % {$_.FullName} }

Function ListLootFiles($folder) { Get-ChildItem -Path $folder -File | Where-Object {$_.name -match "-loot_"} | % {$_.FullName} }

& $CMD $FileLoot

foreach ($file in ListSRFiles($PathBWLMC)) {
    & $CMD $file
}

foreach ($file in ListLootFiles($PathBWLMC)) {
    & $CMD $file
}

foreach ($file in ListSRFiles($PathAQ40)) {
    & $CMD $file
}

foreach ($file in ListLootFiles($PathAQ40)) {
    & $CMD $file
}

foreach ($file in ListSRFiles($PathNaxx)) {
    & $CMD $file
}

foreach ($file in ListLootFiles($PathNaxx)) {
    & $CMD $file
}