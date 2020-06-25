#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

referenceString="password"
read -s -p "Enter a password guess:" myString
echo
# asking the user that the password he used was correct or not.
if [ $myString = $referenceString ]; then
echo "The password is correct."
echo
#asking the user again by using else condition
else
  echo "Enter password again."
  read -s -p "Enter a password guess:" myString
 if [ $myString = $referenceString ]; then
   echo "The password is correct."
   echo
#asking the user again by using else condition
 else
   echo "Enter password again."
   read -s -p "Enter a password guess:" myString
 if [ $myString = $referenceString ]; then
   echo "The password is correct."
   echo
 else
   echo "Enter password again."
   read -s -p "Enter a password guess:" myString
	if [ $myString = $referenceString ]; then
  echo "The password is correct."
  echo
else
  echo "Enter password again."
  read -s -p "Enter a password guess:" myString
 if [ $myString = $referenceString ]; then
  echo "The password is correct."
  echo
  # users tries are completed so using else condition asking him no more tries
else
  echo "yours tries are finished no more tries now".
fi
fi
fi
fi
fi
#script closed




















[ $myString = $referenceString ] && echo "Correct!" || echo "Incorrect."
