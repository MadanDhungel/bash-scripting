#!/bin/bash

#using array and for loop

myArray=(Madan Raju Sham Hari)

length=${#myArray[*]}

for (( i=0; i<&length; i++ ))
do 
    echo "Name is: ${myArray[$i]}"
done