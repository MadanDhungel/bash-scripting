#!/bin/bash

# A bash script demonstrating variable usage
name="Madan"
age=28
host=$(hostname)
echo "Hello, my name is $name!, I am $age years old."
echo "The script is running on host: $host" 

#single line comment
<<comment
This is a multi-line comment
You can write multiple lines of text here
and it will be ignored by the shell
comment

name="Jero"
#the value of name variable is changed
echo "Hello, my name is $name!, I am $age years old."
echo "The script is running on host: $host"

# Demonstrating read-only variable
readonly college="ABC College"
echo "I study at $college"
#once the variable is marked as readonly, it cannot be changed
#again providing variable college="XYZ University" 
# This will cause an error if uncommented
