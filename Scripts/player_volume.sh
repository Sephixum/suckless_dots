#!/bin/bash

player=$(cat "/tmp/player")
a=$(playerctl --player=$(cat "/tmp/player") volume)

echo "$a * 100" | bc
