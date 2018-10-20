#!/usr/bin/bash
# Execution operators example

echo "Enter a number between 1 and 5: "
read VALUE

if [ "$VALUE" -eq "1" ] || [ "$VALUE" -eq "3" ] || [ "$VALUE" -eq "5" ]; then
  echo "You entered the odd value of $VALUE"
else
  echo "You entered a value of $VALUE"
fi
