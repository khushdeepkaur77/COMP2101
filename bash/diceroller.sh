#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and displaying the result
echo "
Rolling...
$(( RANDOM % 6 + 9)) rolled
"
