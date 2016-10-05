#!/bin/bash

# Common concept present in most programming languages.
# Named container on which the program may store a value.
# Convention I hate: variable names in CAPITAL letters. 
# I don't do that unless needed.

# Let's calculate a triangle's area, known length of base and height.
# Asignment is storing a value inside the variable.
# Referencing is using the variable's value in another part of the program.

# Assignment...
# You may use 'var=value', or 'let var=value' as the simplest option
# Complex variables are created using 'declare -a array'
# Variables valid only in a context are created via 'local var=value'
# Use 'export var=value' to propagate the assignment outside the current process

width=34
height=7

# Referencing...
# Variable usage in further expressions
# May be a new assignment or not, who cares
# A dollar in front of the name is a reference
# This forces substitution of the name by the current value

area=`expr $base \* $altura / 2`
echo "Area of the triangle of width $base and height $altura is: $area"

# Those reverse quote sign means `execute this`
# May also use parenthesis to do the same: $(execute this)

area=$($base \* $altura / 2)

# Dollar and curly braces...
# If the variable name may confuse in the middle of an expression,
# then you may use ${varname} instead of $varname as in
# area=`expr ${base} \* ${altura} / 2`
# This only applies to reference, not to definition of variables.
# You may not write '{width}=34' but I would like this syntax.

month="february"
filename=$month777
echo "Copying ${filename}..."

month="february"
filename=${month}777
echo "Copying ${filename}..."

# end of chapter 01
