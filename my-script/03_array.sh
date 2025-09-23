#!/bin/bash

#Array (space seperated values)
myArray=(1 2 madan jero true "Madan Dhungel" l b h)

#Accessing array values
#to print full name i.e 5th index
echo "Value in 5th index is: ${myArray[5]}"
#to print all values
echo "All values in array are: ${myArray[*]}"
#to print length of array
echo "Length of array is: ${#myArray[*]}"
