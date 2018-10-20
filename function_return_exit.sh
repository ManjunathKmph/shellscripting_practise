#!/usr/bin/bash
# demo of return values and testing results

# global variables
YES=0
NO=1
FIRST=$1
SECOND=$2
THIRD=$3

# function definitions - start

# check the command line parameters passed in
funcCheckParams() {
  # did we get three params
  if [ ! -z "$THIRD" ]; then
    echo "we got three params..."
    return $YES
  else
    echo "we didn't get the three params..."
    return $NO
  fi
}

# function definitions - stop

# script - start
clear

funcCheckParams
RETURN_VALS=$?

# did we get three or not
if [ "$RETURN_VALS" -eq "0" ]; then
  echo "We received three params and they are: "
  echo "Param 1: $FIRST"
  echo "Param 2: $SECOND"
  echo "Param 3: $THIRD"
  echo ""
else
  echo "Usage: function_return_exit.sh [param1] [param2] [param3]"
  exit 1
fi
