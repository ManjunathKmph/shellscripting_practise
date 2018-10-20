#!/usr/bin/bash
# Check whether script got expected command line arguments or not

if [ "$#" != "3" ]; then
  echo "Usage: checkargs.sh [param1] [param2] [param3]"
  exit 300
fi

echo "I live!I got what I needed"

# ${3?"Usage: $1 ARGUMENT $2 ARGUMENT $3 ARGUMENT} -- alternate way of checking for three parameter passed from commandline or not
