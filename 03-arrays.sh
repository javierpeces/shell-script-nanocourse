#!/bin/bash

# An array: a variable with multiple values.
# we reference each one using a number named 'index'

neighbour[1]="the friendly guy with the red shirt"
neighbour[2]="the beautiful lady in the second floor"
neighbour[3]="the old madam looking thru the window"

for i in 1 2 3
do
    echo "In floor number $i lives ${neighbour[ $i ]}"
done
