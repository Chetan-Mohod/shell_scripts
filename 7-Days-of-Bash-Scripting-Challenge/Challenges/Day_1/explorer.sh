#!/bin/bash

while true; do
        #PART1
        echo "Files and directory in current path:"
        ls -lh | awk '{print $5, $9}'
#PART2
#Taking input from user
read -p "Enter a line of text: ( the user presses Enter without any text )" input

#Checking if user gives input or not, Exit if the user enters an empty string
if [ -z $input ]; then
        echo "Exited the Interactive Explorer."
        break
fi

#Char count from user input
char_count=$(echo -n $input | wc -m)

# The echo -n command prints the value of the variable input without adding a newline at the end.
#wc -m: wc stands for word count, but with the -m option, it counts the number of characters in the input.

echo "Character count is : $char_count"

done
