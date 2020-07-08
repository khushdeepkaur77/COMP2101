#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
User="Kaur"
hostname="$(hostname)"
Aday=$(date +%A)
presenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############
#setting title on monday
if [ "$Aday" = Monday ];then
line="Welcome to planet $hostname, Confident $User!"
#setting title on tuesday
elif [ "$Aday" = Tuesday ];then
line="Welcome to planet $hostname, Pratical $User!"
#setting title on wednesday
elif [ "$Aday" = Wednesday ];then
line="Welcome to planet $hostname, Worrier $User!"
#setting title on thursday
elif [ "$Aday" = Thursday ];then
line="Welcome to planet $hostname, Respectful $User!"
#setting title on friday
elif [ "$Aday" = Friday ];then
line="Welcome to planet $hostname, Serious $User!"
#setting title on saturday
elif [ "$Aday" = Saturday ];then
line="Welcome to planet $hostname, Strongest $User!"
#setting title on sunday
else line="Welcome to planet $hostname, Truthful $User!"
fi
cowsay "$line It is $presenttime on $Aday."
