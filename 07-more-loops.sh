#!/bin/bash

# Classic COBOL programmers used to code with the rude PERFORM loop.
# It had no way to exit in the middle or at the end of the block.
# An anticipated read was needed to process a file line by line:
#
#     READ INTO INPUT-DATA
#
#     PERFORM UNTIL END-OF-FILE
#         DISPLAY 'current line contents = ' INPUT-DATA
#         READ INTO INPUT-DATA.
#
#     DISPLAY 'execution continues here...'
#
# The final dot '.' marked the end of the loop. Hawkeyes only!
# Let's try a bash version of this, using the 'while' structure:

loop=1
read -s
rc=$?

while [ $rc -eq 0 ]
do
    echo "We are in the loop number ${loop}: '${REPLY}'"
    read -s
    rc=$?
    loop=`expr ${loop} + 1`
done

echo "End of the process. Total, ${loop} iterations."

# Interesting thing: The variable "$?" holds the exit code of the previous instruction.
# It's often zero in case of normal termination and greater than zero in case of error.
# But this is up to the program. 
# In this case, 'read' returns 0 if a new line is been read from stdin,
# and something non-zero if no more data is available.
# The first 'read' outside the loop helps processing an empty file.
# No iteration happens in that case.

# The 'break' instruction below helps coding in a more concise and efficient way.

loop=1

while [ /bin/true ]
do
    read -s || break
    echo "Loop number ${loop}. Current line is '${REPLY}'"
    loop=`expr ${loop} + 1`
done

echo "End of the process. Total, ${loop} iterations."

# This version checks each line after reading it:

loop=1

while [ /bin/true ]
do
    read -s
    if [ $? -gt 0 -a -z "${REPLY}" ]; then break; fi
    echo "'${REPLY}' in loop ${loop}"
    loop=`expr ${loop} + 1`
done

# Logical AND between two conditions is coded '-a', 
# and a zero length string is detected with '-z'.
# We avoid syntax errors double quoting the variable 'REPLY' after '-z'
