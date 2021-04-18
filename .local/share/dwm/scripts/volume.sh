#!/bin/bash

volume=$(pamixer --get-volume-human)
ICON="  "

if [[ $volume = "muted" ]]; then
  ICON="  "
fi

printf "\x11$ICON%s\x0b" "$volume" 
