#!/bin/bash

#if-else statement

read -p "Enter your marks: " marks
if [[ $marks -gt 40 ]]; then
    echo "You have passed the exam."
else
    echo "You have failed the exam."
fi


#elif statement

read -p "Enter your marks: " marks
if [[ $marks -ge 80 ]]; then
    echo "You have received an A grade."
elif [[ $marks -ge 60 ]]; then
    echo "You have received a B grade."
elif [[ $marks -ge 40 ]]; then
    echo "you have received a C grade."
else
    echo "You have failed the exam."
fi