#!/usr/bin/bash
# tests for existence of indicated file name

FILENAME=$1
echo "Testing for the existence of a file called $FILENAME"

if [ -a $FILENAME ]
then
  echo "File $FILENAME indeed exist!"
fi

#tests for non existence of indicated file name
if [ ! -f $FILENAME ]
then
  echo "File $FILENAME indeed does not exist!"
fi

#test multiple expressions in single if statement
if [ -f $FILENAME ] && [ -r $FILENAME ]
then
  echo "File $FILENAME exists and is readable"
fi
