<# Program Name : network.ps1 
Date: May 30, 2020 
Author: Andrew J. Martin 
Course: CIT361 
I, Andrew J. Martin, affirm that I wrote this script as original work completed by me. #>

# MAC Database path
# C:\Users\andre\psfiles\data\MACDatabase.txt

function Get-MACVendor ($MACAddress, $DatabasePath) {
    try{
        $DatabasePath = Read-Host 'Please enter a directory path to a database of MAC addesses'
    }catch{
        'That is not a valid path to a database.'
    }
}


function Format-Songs {
    $s=import-csv -Delimiter "`t" C:\usr\andre\psfiles\data\RushSongs.txt
    $s1=$s|group album
    $s1|%{Add-Member -MemberType NoteProperty -name year -value ($_.group[0].year -PassThru -InputObject $_)}

    foreach($a in $s1){
        Write-host $a.name $a.year
        foreach($song in $a.group){
            "$($song.song)"
        }
    }


}