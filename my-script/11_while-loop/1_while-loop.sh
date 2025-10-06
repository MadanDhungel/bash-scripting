#!/bin/bash

#working with while loop

count=1
num=10

while [ $count -le $num ]
do
    echo "Value is: $count"
    ((count++))
done