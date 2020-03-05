function hi {
    Write-Host "Hello $args" -ForegroundColor green
    " there are $($args.count) args"
}
function add([int]$n1,[int]$n2){
    $n1+$n2
    "There are $($args.count) args."
}
function add1{
    param($n1,$n2)
    $n1+$n2
    "There are $($args.count) args."
}
function get-soup {
    param (   
    [Parameter(Mandatory=$true,
    HelpMessage="what soup do you want?")]
        $soup='french onion',[switch]$please)
    if($please){
        "$soup soup for you."
    }else{
        write-host -for red "no $soup soup for you!"
    }
}