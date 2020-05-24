<# Program Name : Guess my Favorite Color 
Date: May 14, 2020 
Author: Andrew Martin 
Corse: CIT361 
I, Andrew Martin, affirm that I wrote this script as original work completed by me. #>

#Returns an array of all the possible ConsoleColor Values
$SystemColors=[System.Enum]::getvalues([System.ConsoleColor]) 

#Creates a ConsoleColor from a string
#$color=[System.ConsoleColor]'Red' 

#Returns the name of the enumeration
#[string]$color 

#Returns the value of the enumeration
#[int]$color

#Number of rounds played
$Rounds=0

#Number of times the user won
$UserWin=0

#Number of times the computer won
$ComputWin=0

$GamePlay=Read-Host "Would you like to play a game?  Please enter yes or no"
if($GamePlay -ieq 'Yes'){
#Assigns a guess for the computer
$ComputGuess =$SystemColors|Get-Random

Write-Host $SystemColors
$HumanGuess= Read-Host 'Please pick a color from the list above'
if($HumanGuess -eq $ComputGuess){
    'That is not correct.'
    $Rounds++
    $ComputWin++
}else{
    'You are correct!'
    $Rounds++
    $UserWin++
}
$GamePlay=Read-Host 'Would you like to play again?'
if($GamePlay -eq 'Yes'){
    $HumanGuess= Read-Host 'Please pick another color from the list above'
    continue
} else{
    'Thank you for playing!'

}
} else{
    'Have a good day'

}

#Informs them of the number of rounds that was played, and what they chose.
Write-Host "You played $Rounds rounds"
Write-Host "You guessed $HumanGuess"
Write-Host "You won $UserWin number of rounds"
Write-Host "The Computer won $ComputWin number of rounds"