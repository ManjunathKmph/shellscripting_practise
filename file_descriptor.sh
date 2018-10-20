#!/usr/bin/bash
# demo of reading and writing to a file using a file descriptor

echo "Enter a file name to read"
read FILE

exec 5<>$FILE   # < read, > write and <> read/write both

while read -r SUPERHERO; do
  echo "Superhero name: $SUPERHERO"
done <&5

echo "File was read on: `date`" >&5

exec 5>&-

