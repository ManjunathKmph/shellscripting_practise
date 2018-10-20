#!/usr/bin/bash
# demo of the case statement

echo "Main Menu"
echo "========="
echo "1) Choice One"
echo "2) Choice two"
echo "3) Choise Three"
echo ""
echo "Enter Choice"
read MENUCHOICE

case $MENUCHOICE in
  1)
    echo "Congratulations for choosing the first choice";;
  2)
    echo "Choice 2 chosen";;
  3)
    echo "Last choice chosen";;
  *)
    echo "You didn't choose from the given options";;
esac
