#!/bin/bash
ICON=" "
read -r ac </sys/class/power_supply/ADP1/online
read -r capacity </sys/class/power_supply/CMB0/capacity

if [ "$ac" = 1 ]
then
  ICON=" "
fi



printf "\x0e$ICON%s%%\x0b" "$capacity"
