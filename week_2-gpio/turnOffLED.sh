#!/bin/bash

# GPIO1_12 refers to GPIO1 pin 12 which is the 12th pin on header P8 and used to drive the LED from BeagleBone Black

# change directory to /sys/class/gpio
cd /sys/class/gpio

# change directory to gpio44
cd gpio44

# turn off the LED
echo 0 > value

# unexport pin 44 from userspace
echo 44 > /sys/class/gpio/unexport
