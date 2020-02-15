[void](Get-Process notepad -ErrorAction SilentlyContinue -ErrorVariable ne )
if($ne.count -eq 0){
    Write-Host "Notepad is running" -ForegroundColor green
}else {
    Write-Host "Notepad is NOT running!" -fo red
}

$v=0
while($v -ne 3){
    $v++
    "Iteration $v"
}
$a='red','blue','green'
for ($i=0;$i -lt $a.count;$i++){
    "Iteration $($a[$i}\])"
}
$a='red','blue','green'
foreach($item in $a){
    "iteration $item"
}

foreach ($file in get-childitem){
    $file.name
}

