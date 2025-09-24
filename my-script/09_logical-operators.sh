#!/bin/bash

#AND operator
read -p "Enter your age: " age
read -p "Enter your country: " country
if  [[ $age -ge 18 && $country == "nepal" ]]; then
    echo "You are eligible to vote."
else
    echo "You are not eligible to vote."
fi


#OR operator
read -p "Enter your age: " age
read -p "Enter your country: " country
if  [[ $age -ge 18 || $country == "nepal" ]]; then
    echo "You are eligible to vote."
else
    echo "You are not eligible to vote."
fi
