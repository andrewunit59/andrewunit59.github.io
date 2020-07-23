<# Program Name : Final Script
Date: July 17, 2020 
Author: Andrew Martin 
Corse: CIT361 
I, Andrew Martin, affirm that I wrote this script as original work completed by me. #>

#Examines the file gems.xml
$file = Get-Item "C:\Users\andre\psfiles\psfiles\gems.xml"

#Measures the length of the file
$bytes = Get-Content $file | Measure-Object Length -Sum
Write-Host $bytes

#Gets the MD5 hash of the file
$Hash = Get-FileHash $file | Format-Table
Write-Host $Hash

#Finds the number of gems in the file
$Count = (Get-Content $file).count
Write-Host $Count

#Average Hardness of the gems
$Average = Get-Content $file | Measure-Object

#These next few lines deal with the DOI.txt file in psfiles/files
$DOI = Get-Item "C:\Users\andre\psfiles\files\DOI.txt"

#Find how many words are in the DOI.txt file.
Get-Content $DOI | Measure-Object -Word
Write-Host $DOI

#Finds the number of unique words in a file
# Directs the list of unique words to a text file.
$unique = $( foreach ($line in Get-Content $DOI) {
    $line.tolower().split(" ")
  }) | Sort-Object | Get-Unique
Write-Host $unique.count

