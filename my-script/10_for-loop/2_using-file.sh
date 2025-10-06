#!/bin/bash

#working with file

FILE="/home/madan/bash-scripting/my-script/names.txt"

for name in $(cat $FILE)
do
    echo "Name is: $name"
done
