#!/bin/bash

# change directory to /sys/class/gpio
cd /sys/class/gpio

# change directory to gpio44
cd gpio44

# turn off the LED
echo 0 > value

# unexport pin 44 the userspace
echo 44 > /sys/class/gpio/unexport
