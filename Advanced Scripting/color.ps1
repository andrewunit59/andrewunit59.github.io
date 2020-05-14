<# Program Name : Guess my Favorite Color 
Date: May 14, 2020 
Author: Andrew Martin 
Corse: CIT361 
I, Andrew Martin, affirm that I wrote this script as original work completed by me. #>

#Returns an array of all the possible ConsoleColor Values
#$SystemColors=[System.Enum]::getvalues([System.ConsoleColor]) 

#Creates a ConsoleColor from a string
#$color=[System.ConsoleColor]'Red' 

#Returns the name of the enumeration
#[string]$color 

#Returns the value of the enumeration
#[int]$color

$HumanGuess= Read-Host 'Please enter rock, paper, or scissors.'