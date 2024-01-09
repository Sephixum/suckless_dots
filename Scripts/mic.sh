#!/bin/bash

a=$(pactl get-source-mute @DEFAULT_SOURCE@)

if [[ "$1" == "-s" ]]; then
  if [[ "$a" == "Mute: no" ]]; then
    echo "Unmuted"
  elif [[ "$a" == "Mute: yes" ]]; then
    echo "Muted"
  fi

else
  if [[ "$a" == "Mute: no" ]]; then
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
    # polybar-msg action mic hook 2
    notify-send "Microphone muted" --expire-time 1000
  elif [[ "$a" == "Mute: yes" ]]; then
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
    # polybar-msg action mic hook 1
    notify-send "Microphone unmuted" --expire-time 1000
  fi
fi

