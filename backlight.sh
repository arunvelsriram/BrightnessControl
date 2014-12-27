#!/usr/bin/env bash

PATH_TO_FILE="/sys/class/backlight/intel_backlight/brightness"

if [[ $# == 1 && ($1 == "-u" || $1 == "-d") ]]; then
	if [[ $1 == "-u" ]]; then 
		newb=$(($(<$PATH_TO_FILE) + 250))
	else  
		newb=$(($(<$PATH_TO_FILE) - 250))
	fi
	#echo $newb
	echo $newb > /sys/class/backlight/intel_backlight/brightness
else
	echo -e "USAGE:\n  python brightness_control.py option\nOPTIONS:\n    -u, Increase brightness\n    -d, Decrease brightness"
fi