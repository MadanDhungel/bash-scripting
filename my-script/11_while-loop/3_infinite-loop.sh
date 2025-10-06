#!/bin/bash

#infinite loop using while

while true
do
    echo -e "Hi Buddy!! \nPress [CTRL+C] to stop.."
    sleep 5s
done

#infinite loop using for loop

for (( ; ; ))
do
    echo -e "Hi Buddy!! \nPress [CTRL+C] to stop.."
    sleep 5s
done

: << '
Common escape sequences with echo -e:
\n → New line
\t → Horizontal tab
\v → Vertical tab
\\ → Backslash
\a → Alert (beep sound)
\e or \033 → Escape character (used for colors)
'