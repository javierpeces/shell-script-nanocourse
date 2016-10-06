#!/bin/bash

# A loop... a piece of code is executed again and again
# Maybe forever, or maybe something helps leaving the roundabout

for (( i = 0; i '<' 10; i ++ ))
do
    echo "Vuelta número $i"
done

# In this sample, code between 'do' and 'done' runs several times.
# How much ones? We use a variable named 'i' that changes on each iteration.
# This variable...
# - has a value of 'zero' before we start (that means 'i = 0' after the 'for')
# - changes adding one on each loop (that's what 'i ++' stands for)
# An "exit loop condition" is fortunately defined...
# - when 'i' becomes greater than 10, the loop ends 
#   and execution continues below the 'done' clause

IFS="^M"
firstname="Megan"
lastname="Denise Fox"
phoneno="1-800-YOU-WOULD-LIKE-TO-KNOW"

for word in $firstname $lastname $phoneno
do
    echo ${word}
done

# The trick: default separator is the 'space' char.
# A variable named 'IFS' controlls what character is the delimiter.

IFS="^M"
i=1

for filename in `ls -1`
do
    echo "The file $i is named $filename"
    i=`expr $i + 1`
done

# This time we use a command output as a bunch of lines
# and we process it one line at a time.
# An index named 'i' starts in the value '1' and grows one unit per iteraton.

