#!/bin/bash

# Execute volume.sh script and send SIGUSR1 signal to dwmblocks
./volume.sh;
kill -44 "$(pidof dwmblocks)"

# Execute mic.sh script with specific options and send SIGUSR2 signal to dwmblocks
/home/sephix/Scripts/mic.sh -s;
kill -45 "$(pidof dwmblocks)"
