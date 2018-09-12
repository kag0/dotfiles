#!/usr/bin/env bash

direction=$1

max=`cat /sys/class/backlight/intel_backlight/max_brightness`
current=`cat /sys/class/backlight/intel_backlight/brightness`
let step=max/20

echo "before: $current"

if [ "$direction" == "up" ]
then
	current=$((current+step))
elif [ "$direction" == "down" ]
then
	current=$((current-step))
fi

echo "now: $current"

tee /sys/class/backlight/intel_backlight/brightness <<< "$current"

#notify-send "Brightness ${current}/${max}" -t 200
