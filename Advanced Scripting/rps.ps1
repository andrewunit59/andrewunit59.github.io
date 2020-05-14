<# Program Name : Rock, Paper, Scissors Game 
Date: May 5, 2020 
Author: Andrew Martin 
Corse: CIT361 
I, Andrew Joseph Martin, affirm that I wrote this script as original work completed by me. #>  

#Round number
$RoundNumber = 0

#Counter for when the computer wins
$ComputWin = 0

#Counter for when the human user wins
$HumanWin = 0

#Plays the game until either the computer or human user wins
do{

#Assigns a computer guess
$ComputGuess = 'rock', 'paper', 'scissors'|get-random

#Prompts the human user to enter a guess
"Can you beat a computer at rock paper scissors?  Can you win at least three times?"
$HumanGuess= Read-Host 'Please enter rock, paper, or scissors.'
 if ($HumanGuess -eq 'rock'){
     if($ComputGuess -eq 'scissors'){
     "Congratulations!  You won this round!"
     $HumanWin++
     }elseif($ComputGuess -eq 'paper'){
        "Sorry.  Better luck next time!"
        $ComputWin++
     }elseif($ComputGuess -eq 'rock'){
        "It's a draw!  Try again!"
     }
    }
if ($HumanGuess -eq 'scissors'){
    if($ComputGuess -eq 'paper'){
    "Congratulations!  You won this round!"
    $HumanWin++
    }elseif($ComputGuess -eq 'rock'){
        "Sorry.  Better luck next time!"
        $ComputWin++
    }elseif($ComputGuess -eq 'scissors'){
        "It's a draw!  Try again!"
        }
       }
if ($HumanGuess -eq 'paper'){
    if($ComputGuess -eq 'rock'){
    "Congratulations!  You won this round!"
    $HumanWin++
    }elseif($ComputGuess -eq 'scissors'){
        "Sorry.  Better luck next time!"
        $ComputWin++
    }elseif($ComputGuess -eq 'paper'){
        "It's a draw!  Try again!"
        }
       }
       Read-Host 'Want to play again? Yes or No'
    if($HumanGuess -eq 'no'){
        return
    }
 $RoundNumber++
} while ($CompuWin -lt 2 -and $HumanWin -lt 2)

#If the user wins
if ($HumanWin -eq 2){
    "You won!  You're a genius!"
}

#If the computer wins
if ($ComputGuess -eq 2){
    "I'm so sorry, but the Computer won."
}

#Informs them the number of rounds that was played.
"You played $RoundNumber rounds!"
"You won $HumanWin rounds."
"The Computer won $ComputWin rounds."