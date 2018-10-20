#!/usr/bin/bash
# demonstrating variable scope


# global variable declaration
GLOBALVAR="Globally Visible"

# function definitions - start

# sample function for function variable scope
funcExample() {
  #local variable to the function
  LOCALVAR="Locally Visible"
  
  echo "From within the function, the varible is $LOCALVAR..."
}

# function definitions - stop

# script - start
clear

echo "This step happens first..."
echo ""
echo "Global Variable = $GLOBALVAR (before the function call)"
echo "Local Variable = $LOCALVAR (before the function call)"
echo ""
echo "Calling function - fucnExample()"

funcExample

echo ""
echo "Function has been called"
echo ""
echo "Global Variable = $GLOBALVAR (after the function call)"
echo "Local Variable = $LOCALVAR (after the function call)"

