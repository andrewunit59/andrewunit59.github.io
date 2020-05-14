#Assigns a random number
$random=get-random -Minimum 1 -Maximum 100

#create the counter variable
$counter=0

do {

#prompt the user to enter their guess
"Please enter a number between 1 and 100"
$guess=Read-Host 'Please enter your guess'

    if($guess -gt $random){
        "Your guess is too high! Please guess again"
    }
    elseif(+$guess -lt $random){
        "Your guess is too low!  Please guess again."
    }

    $counter++
} while( $guess -ne $random)

#Congratulate the user, and inform them of how many attempts it took them.
"You guessed right!  The number is $random"
"It took you $counter tries to guess correctly"
