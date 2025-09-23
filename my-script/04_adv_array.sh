#!/bin/bash

myVar="Hello my name is Madan Dhungel"
myVarLength=${#myVar}
echo "The length of myVar is: $myVarLength"
echo "The length of myVar is: ${#myVar}"


#uppercase and lowercase
echo "Uppercase is : ${myVar^^}"
echo "Lowercase is : ${myVar,,}"


#to replace a string
newVar=${myVar/World/Universe}
echo "New var is : $newVar"

#slice
echo "Sliced var is : ${myVar:17:13}"