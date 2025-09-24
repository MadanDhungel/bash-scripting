#!/bin/bash

# This script demonstrates basic arithmetic operations in bash.
# It performs addition, subtraction, multiplication, division, and modulus.

echo "Arithmetic Operations in Bash"
echo "--------------------------------"
read -p "Enter first number: " num1
read -p "Enter second number: " num2
echo "--------------------------------"

#method 1: Using let command
# Addition
let sum=$num1+$num2
echo "Addition: $sum"

#subtraction
let difference=$num1-$num2
echo "Subtraction: $difference"

#division
let quotient=$num1/$num2
echo "Division: $quotient"  

#multiplication
let product=$num1*$num2
echo "Multiplication: $product"

#method 2: Using double parentheses
echo "Arithmetic Operations in Bash"
echo "--------------------------------"
read -p "Enter first number: " num1
read -p "Enter second number: " num2
echo "--------------------------------"

# Addition
echo "Addition: $((num1 + num2))"

#subtraction
echo "Subtraction: $((num1 - num2))"

#division
echo "Division: $((num1 / num2))"

#multiplication
echo "Multiplication: $((num1 * num2))"
