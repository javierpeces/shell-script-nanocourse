#!/bin/bash

# Check if a file exists

if [ -f ./07-misc.sh ]
then
    echo "The file 07-misc.sh really exists."
else
    echo "Looks like the file is not here"
fi

if [ -f ./00-pretty-sure-not-exists ]
then
    echo "Rare if it exists."
else
    echo "Non existing as expected."
fi
