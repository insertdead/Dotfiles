#!/bin/bash

case $1 in
  1) $TERMINAL -e bat --decorations=never "$HOME/.local/share/weatherreport" ;;
  3) notify-send "Gets weather for your area" ;;
esac
