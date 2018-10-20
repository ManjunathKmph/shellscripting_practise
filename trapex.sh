#!/usr/bin/bash
# example of trapping events and limiting the shell stopping

clear

trap 'echo " - Please press Q to exit.."' SIGINT SIGTERM SIGTSTP

while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]; do
  echo "MAIN MENU"
  echo "========="
  echo "1) Choice One"
  echo "2) Choice Two"
  echo "3) Choice Three"
  echo "Q) Quit/exit"
  echo ""
  read CHOICE

  clear
done
