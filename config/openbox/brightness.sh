#!/bin/sh

# sudo su -c  'echo 231 > /sys/class/backlight/intel_backlight/brightness' 
max_brightness=230
OLD=$(sudo su -c 'cat /sys/class/backlight/intel_backlight/brightness' )

if [ "$1" == "inc" ]
then
NEW=`expr $OLD + 23`
fi

if [ "$1" == "dec" ]
then
NEW=`expr $OLD - 23`
fi

if [ $NEW -ge $max_brightness ]
then
exit
fi

sudo su -c  "echo $NEW > /sys/class/backlight/intel_backlight/brightness"

