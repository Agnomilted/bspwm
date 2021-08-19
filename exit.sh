#! /bin/bash

a=$(echo -e 'logout\nrestart\npoweroff\nreboot' | rofi -dmenu -p 'Logout, restart bspwm, poweroff or reboot?');
if [ $a = 'logout' ]
then
	bspc quit
elif [ $a = 'restart' ]
then
	bspc wm -r
elif [ $a = 'poweroff' ]
then
	rofi -dmenu -password -p 'Please enter your user password' | sudo -S poweroff
elif [ $a = 'reboot' ]
then
	rofi -dmenu -password -p 'Please enter your user password' | sudo -S reboot
fi
