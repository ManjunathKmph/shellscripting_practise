#!/usr/bin/bash
# interactive script for user input

echo "Enter your first name: "
read FIRSTNAME

echo "Enter your last name: "
read LASTNAME

echo ""
echo "Your Full name is: $FIRSTNAME $LASTNAME"
echo ""
echo "Enter your age:"
read USERAGE

echo "In 10years, you will be `expr $USERAGE + 10` years old."


echo "Enter a filename to read:"
read FILE

# DEBUG START
set -x

while read -r SUPERHERO; do
  echo "Superhero name: $SUPERHERO"
done < "$FILE"


set +x
# DEBUG STOP
