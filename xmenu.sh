#!/bin/sh

xmenu <<EOF | sh &
Applications
	IMG:$HOME/src/xmenu/icons/firefox.png	Web Browser	firefox
	IMG:$HOME/src/xmenu/icons/gimp.png	GIMP	gimp
	IMG:$HOME/src/xmenu/icons/discord.png	Discord	discord
File Browsers
	Thunar	thunar
	Ranger	st -e ranger $HOME
Terminals
	Gnome	gnome-terminal
	st	st
Rofi	rofi -show drun
System Configuration
	Dwm	st -e vim $HOME/src/dwm/config.h
	Xmenu	st -e vim $HOME/src/xmenu/xmenu.sh
	LXAppearance	lxappearance
	Bspwm
		bspwmrc	st -e vim $HOME/.config/bspwm/bspwmrc
		sxhkd	st -e vim $HOME/.config/bspwm/sxhkdrc
		polybar	st -e vim $HOME/.config/polybar/config
		xmenu	st -e vim $HOME/.config/bspwm/xmenu.sh
Wallpaper Selector	select-wallpaper

Shutdown		poweroff
Reboot			reboot
EOF
