<# Program Name : network.ps1 
Date: May 30, 2020 
Author: Andrew J. Martin 
Course: CIT361 
I, Andrew J. Martin, affirm that I wrote this script as original work completed by me. #>

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
    $ipadd= Read-Host 'Please enter an IPv4 address '
    $netMask= Read-Host 'Please enter the subnet mask for the IPv4 address '
    $ipadd= [ipaddress]$ipadd.Trim()
    $netMask= [ipaddress]$netMask.Trim()
    "Your first IP address is $ipadd $netMask"

    $ipadd2= Read-Host 'Please enter a second IPv4 address '
    $netMask2= Read-Host 'Please enter the subnet mask for this IPv4 address '
    $ipadd2= [ipaddress]$ipadd2.Trim()
    $netMask2= [ipaddress]$netMask2.Trim()
    "Your second IP address is $ipadd2 $netMask2"


Get-IPNetwork $netID    

Test-IPNetwork 