<# Program Name : Andrew-Network.psm1 
Date: June 30, 2020 
Author: Andrew Martin 
Corse: CIT361 
I, Andrew Martin, affirm that I wrote this script as original work completed by me. 
#>

Class MAC{

    #Class properties
    hidden[string]$Address

    #Get-MACVendorID (static)
    static[string]Get-MACVendorID(){
        $MACAddress = Read-Host "Please enter the first 3 "
    }

    #Get-MACVendorID
    [string]Get-MACVendorID([string]$Address){
        $this.Address = $Address
        $VendorMAC = ($Address.Substring(0,7))
        return $VendorMAC
    }
}

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

function Get-MACVendor {
    $UseRead= Read-Host "Please enter a MAC address"
    if ($UseRead -eq 'y'){
        $MACAddress=Read-Host "Please enter the first 3 octets of a MAC address (ex: XX:XX:XX)"
        $FileLocate = Get-Content -path $DatabasePath | Format-Table
        if($FileLocate = $null){
            "ERROR: File not found"
        }
        $FileLocate
        }else{
            $netAdapterMACs = Get-NetAdapter 
            $i=0
            while($i -lt $netAdapterMACs.count){
                [string]$conversion = $netAdapterMACs[$i]
                $MACAddress = ($conversion.Substring(13,8),
                $FileLocate = Get-Content -path $DatabasePath;
                $FileLocate
                $i++
            }
        }
}