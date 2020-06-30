Class Metal{
    [string]$symbol
    [string]$name
    [string]$MeltingPoint
    [double]$SpecificGravity
    
}


$Metals=Import-Csv C:\usr\andre\psfiles\data\Metals.csv|ForEach-Object {[Metal]$_}

$m1=[Metal]::New()
$m1.Symbol='Au'
$m1.Name='Gold'
$m1.MeltingPoint=1945
$m1.SpecificGravity=19.3

Write-Host $m1

$m2=New-Object Metal
$m2

$m3=[Metal]@{Symbol='Au';Name='Gold'}
$m3