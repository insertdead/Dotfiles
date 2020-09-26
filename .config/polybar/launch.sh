#!/usr/bin/env bash

#terminate existing bars
killall -q polybar

#Launch bar
echo "---" | tee -a /tmp/polybar1.log
polybar bar1 >>/tmp/polybar1.log 2>&1 & disown

echo "Bar launched"
