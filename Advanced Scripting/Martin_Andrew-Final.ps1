<# Program Name : Final Script
Date: July 17, 2020 
Author: Andrew Martin 
Corse: CIT361 
I, Andrew Martin, affirm that I wrote this script as original work completed by me. #>

#Examines the file gems.xml
$file = "C:\Users\andre\psfiles\psfiles\gems.xml"

#Measures the length of the file
$bytes = Get-Content $file | Measure-Object Length -Sum
Write-Host $bytes

#Gets the MD5 hash of the file

#Finds the number of gems in the file
$Count = Get-Content $file