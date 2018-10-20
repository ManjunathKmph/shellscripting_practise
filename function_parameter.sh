#!/usr/bin/bash
# this demo is for functional parameter passing

# global variable
USERNAME=$1

# function definitions - start

funcAgeInDays() {
  echo "Hello $USERNAME, you are $1 years old."
  echo "That makes you approximately `expr $1 \* 365` days old..."
}

# function definitions - stop

# script - start
clear

echo "Enter your Age:"
read USERAGE

# calculate the number of days
funcAgeInDays $USERAGE
