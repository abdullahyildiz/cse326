#!/bin/bash

# change directory to /sys/class/gpio
cd /sys/class/gpio

# export pin number 44 to userspace
echo 44 > export

# change directory to gpio44
cd gpio44

# set the pin as an output
echo out > direction

# turn on the LED
echo 1 > value
