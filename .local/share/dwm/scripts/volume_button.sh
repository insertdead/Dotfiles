#!/bin/bash
case $1 in
    1) pamixer -t && sigdwmblocks 3 ;;
    3) pamixer --set-volume 50 && sigdwmblocks 3 ;;
esac
