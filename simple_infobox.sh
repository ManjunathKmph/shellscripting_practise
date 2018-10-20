#!/usr/bin/bash
# demo of a simple info box with dialog and ncurses

# global variables/default values
INFOBOX=${INFOBOX=dialog}
SLEEP_INTERVAL=5
XCOORD=10
YCOORD=20

# function declarations - start

# display the infobox and our message
funcDisplayInfoBox(){
  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"
}

# function declarations - stop

# script - start
clear
if [ "$1" == "shutdown" ]; then
  funcDisplayInfoBox "WARNING!" "We are shutting down the system..." "$XCOORD" "$YCOORD" "$SLEEP_INTERVAL"
  echo "Shutting Down!"
else
  funcDisplayInfoBox "Information!" "You are not doing anything fun..." "$XCOORD" "$YCOORD" "$SLEEP_INTERVAL"
  echo "Not Doing Anything!"
fi

# script - stop
