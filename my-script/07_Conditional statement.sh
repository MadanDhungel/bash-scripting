#!/bin/bash

#if-else statement

read -p "Enter your marks: " marks
if [[ $marks -gt 40 ]]; then
    echo "You have passed the exam."
else
    echo "You have failed the exam."
fi


#