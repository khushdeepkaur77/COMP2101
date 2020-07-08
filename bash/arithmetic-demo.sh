#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#using read command to get three numbers from user
read -p "Input1? " number1
# using read command to get three numbers from user
read -p "Input2? " number2
# using read command so that we can get three numbers from user
read -p "Input3? " number3

# the sum of the 3 numbers with a label
sum=$((number1 + number2 + number3 ))
# the product of the 3 numbers with a label
product=$(( number1 * number2 * number3 ))

echo "$number1 plus $number2 plus $number3 is =$sum"
echo "$number1 mutiply by $number2 mutiply by $number3 is =$product"
