#!/bin/bash

# turn off the LED
echo 0 > value

# unexport pin 44 the userspace
echo 44 > /sys/class/gpio/unexport
