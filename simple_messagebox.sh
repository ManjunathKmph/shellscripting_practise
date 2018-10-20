#!/usr/bin/bash
# demo of a simple message box with dialog and ncurses

# global variables/default values
MSGBOX=${MSGBOX=dialog}
XCOORD=10
YCOORD=20

# function declarations - start

# display the infobox and our message
funcDisplayInfoBox(){
  $MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
}

# function declarations - stop

# script - start
clear
if [ "$1" == "shutdown" ]; then
  funcDisplayInfoBox "WARNING!" "Please press OK when you are ready to shutdown the system" "$XCOORD" "$YCOORD"
  echo "Shutting Down Now!"
else
  funcDisplayInfoBox "Information!" "You are not doing anything fun..." "$XCOORD" "$YCOORD"
  echo "Not Doing Anything, back to regular scripting!"
fi

# script - stop
