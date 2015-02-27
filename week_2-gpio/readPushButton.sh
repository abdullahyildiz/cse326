#!/bin/bash

# GPIO1_13 refers to GPIO1 pin 13 which is the 11th pin on header P8 and used to read the status of the momentary push button from BeagleBone Black

# change directory to /sys/class/gpio
cd /sys/class/gpio

# export pin number 45 to userspace
echo 45 > export

# change directory to gpio45
cd gpio45

# set the pin as an output
echo in > direction

cat value

# change directory to /sys/class/gpio
cd /sys/class/gpio

# unexport pin 45 from userspace
echo 45 > unexport
