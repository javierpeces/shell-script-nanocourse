#!/bin/bash

# The 'if-else-fi' structure helps making decissions.
# The 'else' clause is optional.

read -p "Think on a number and write it here. Press ENTER after that. "

if [ "$REPLY" -eq "34" ]
then
    echo "You guessed the secret number."
    echo "It is thirty four."
else
    echo "Sorry."
    echo "Try another time."
fi

# We introduced 'read' to get input from the standard input.
# What we type (or whatever comes into the file assigned to stdin)
# becomes the current value for the variable 'REPLY' 
# or to the one after the prompt string:

read -p "Second chance. Think another number: " userresponse
echo "This is your answer: ${userresponse}"

# The 'case' structure is helpful for multiple choices.
# Instead of chaining if-else-if-else-if... we may select what
# piece of code will be executed depending on the value of a variable:

speed=120

case $speed in

0)
    echo "You are not moving."
    ;;
90)
    echo "About to go beyond the limit if this is a secondary road."
    ;;
120)
    echo "In the highway speed limit."
    ;;
130)
    echo "Expect a fine."
    ;;
*)
    echo "No way to know."
esac

# The only execution separator is ';;'
# If omitted, the next clause is executed even if the value is not matching.
