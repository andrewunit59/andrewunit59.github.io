function New-Greeting {
    $args.count
    if ($args.count -gt 0) {
        "Hi $args"
    }
    else {
        "Hello World"
    }
}
New-Greeting 'Class'
function IsOdd($number){
    if($number % 2 -eq 1){
        return $true
    }else{
        return $false
    }
}

function add($num1,$num2){
    +$num1+$num2
    $args
}