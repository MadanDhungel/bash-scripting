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

#accessing specific values
#last value suggests the increment of index 
#i.e ${myArray[*]:2:3}:2:3 means 2nd from index and add 3 more values
echo "The value from index 2-5 is: ${myArray[*]:2:3}"

#accessing from index 3 to end
echo "The value from index 3 to end is: ${myArray[*]:3}"

#update the array value
myArray+=( 22 33 "New Value" "Another New Value" 100 500)

echo "Updated array is: ${myArray[*]}"
echo "Length of updated array is: ${#myArray[*]}"