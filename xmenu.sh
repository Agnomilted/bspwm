#!/bin/sh

xmenu <<EOF | sh &
Applications
	IMG:$HOME/src/xmenu/icons/firefox.png	Web Browser	firefox
	IMG:$HOME/src/xmenu/icons/gimp.png	GIMP	gimp
	IMG:$HOME/src/xmenu/icons/discord.png	Discord	discord-ptb
File Browsers
	Thunar	thunar
	Ranger	$TERMINAL -e ranger $HOME
Terminals
	Gnome	gnome-terminal
	st	st
	default terminal	$TERMINAL
Rofi	rofi -show drun
System Configuration
	Dwm	$TERMINAL -e $EDITOR $HOME/src/dwm/config.h
	Xmenu	$TERMINAL -e $EDITOR $HOME/src/xmenu/xmenu.sh
	LXAppearance	lxappearance
	Bspwm
		bspwmrc	$TERMINAL -e $EDITOR $HOME/.config/bspwm/bspwmrc
		sxhkd	$TERMINAL -e $EDITOR $HOME/.config/bspwm/sxhkdrc
		polybar	$TERMINAL -e $EDITOR $HOME/.config/polybar/config
		xmenu	$TERMINAL -e $EDITOR $HOME/.config/bspwm/xmenu.sh
Wallpaper Selector	select-wallpaper
Bluetooth	blueman-manager

Shutdown		poweroff
Reboot			reboot
EOF
