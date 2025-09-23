#!/bin/bash

myVar="Hello World"
myVarLength=${#myVar}
echo "The length of myVar is: $myVarLength"
echo "The length of myVar is: ${#myVar}"


#uppercase and lowercase
echo "Uppercase is : ${myVar^^}"
echo "Lowercase is : ${myVar,,}"
