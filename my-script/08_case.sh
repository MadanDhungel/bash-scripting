#!/bin/bash

echo "Enter an option"
echo "1. Date"
echo "2. List files"
echo "3. Location"
read option

case $option in
    1) date;;
    2) ls -lhtra;;
    3) pwd;;
    *) echo "Invalid option";;
esac