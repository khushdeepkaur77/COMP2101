#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "Rolling started..."
# roll the dice and save the results where range is number of sides and bias is the minimum value generated
die1=$(( RANDOM % 6 + 1)) #rolling die1
die2=$(( RANDOM % 6 + 1 )) #rolling die2

# generating the sum of the die
sum=$(( die1 + die2 ))
# generating the average of the die
average=$(( sum/2 ))

# displaying the summary which vlaues has been rolled and showing the results of arithmetic
echo "Rolling $die1, $die2 and sum is equales to $sum"
echo "Rolling $die1, $die2 and an average is equales to $average"
