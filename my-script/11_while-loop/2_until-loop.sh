#!/bin/bash

#using until loop

a=10

until [ $a -lt 1 ]
do
    echo "Value is: $a"
    ((a--))
done