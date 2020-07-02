#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
vebosmode=0
debugmode=0
#for storing the command line arguments
echo "myarg array is : $1 "
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array


# Options to recognize: -h for help and printing it and exiting the command
case $1 in -h )
echo "adding -h for help"
echo "same for -v for vebosemode and adding -d for debugmode and its level is [1-4]"
exit
;;
-v)
# If the verbose option is recognized, set a variable to indicate verbose mode is on

echo "adding -v for vebosemode "
vebosemode=1
;;
-d)
# If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
echo "adding -d for debugmode "
case $2 in
  [1-4] )
echo "adding -d for debugsmode at $2  level"
debugmode=$2
shift
;;
*0)
#   display an error if the user gave the -d option without a single digit number after it

 echo "ERROR :something is wrong the debugmode should be in between[1-4]"
esac
;;
*)
errors=$5                          #if the error are shown a way then it will print
  echo "Error:no matching value: $errors"
esac


# each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label

#telling user verbosemode is on or not using if
if [ $vebosemode = 1 ]
 then
 echo "vebosemode is on "
else
  echo "vebosemode is not on"
fi
#        Tell the user if debug mode is on and if it is, what number it is set to
if [ $debugmode -gt 0 ]; then
  echo "debugmode is on and its level is set to $debugmode"
else
  echo "debugmode is not on "
fi

#         Print out the myargs array with a label
echo "print out myargs with its lable"
