#!/usr/bin/bash
# This is to show exit status types

set -e #to tell command to exist immediately as soon as error exit status

expr 1 + 5
echo $?

rm doodles.sh
echo $?

expr 10 + 10
echo $?
