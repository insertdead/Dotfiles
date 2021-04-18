#!/bin/bash

ICONn="  " # icon for normal temperatures
ICONc=" " # icon for critical temperatures

crit=80 # critical temperature

temp="$(sensors | sed -n '3p' | awk '{print $4}')"
temp=${temp%????}

if [ "$temp" -lt "$crit" ] ; then
    printf "\x0c$ICONn%s°C\x0b" "$temp"
else
    printf "\x0d$ICONc%s°C\x0b" "$temp"
fi
