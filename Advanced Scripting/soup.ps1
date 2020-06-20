function Get-Soup {
    <#
    .SYNOPSIS
    Allows a user to pick a soup they would like.
    .Description
    A user enters a type of soup they would like, and enter please for the desired result.
    .Example
    'No chicken soup for you'
    'Pot 1 Chicken soup for you'
    #>
    [Alias('Soup')]
    param(
        [Parameter(Mandatory=$true)]
        $soup,
        [Parameter(Mandatory=$true)]
        [ValidateSet('Cup','Bowl','Pot')]
        $size,
        [ValidateRange(1,5)]
        $Quantity = 1,
        [switch]$Please
    )
    if ($please){
        "$Quantity $size$(if($quantity -gt 1){'s'}) of $soup soup for you. "
    }
    else{
        "No $soup soup for you!"
    }
}