<# Program Name : Andrew-Network.psm1 
Date: June 30, 2020 
Author: Andrew Martin 
Corse: CIT361 
I, Andrew Martin, affirm that I wrote this script as original work completed by me. #>

function Get-IPNetwork($ipadd, $netMask, $ipadd2, $netMask2) {       
    $netID = [ipaddress]($ipadd.Address -band $netMask.Address) 
    $netID2 = [ipaddress]($ipadd2.Address -band $netMask2.Address)
    "The first IP addresse's Network ID is $netID" 
    "The second IP address's Network ID is $netID2"
}

function Test-IPNetwork($netID, $netID2) { 
    if($netID = $netID2){
        return $true
    }else{
        return $false
    } 
}

function Get-MACVendor ($MACAddress, $DatabasePath) {
    try{
        $DatabasePath = Read-Host 'Please enter a directory path to a database of MAC addesses'
    }catch{
        'That is not a valid path to a database.'
    }
}