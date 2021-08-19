#! /bin/bash

if [ $1 = 'increase' ]
then
	amixer sset Master 10%+
	herbe "$(amixer | grep 'Playback.*\%' | sed 's/^.*[1234567890] //;1q')" &
elif [ $1 = 'decrease' ]
then
	amixer sset Master 10%-
	herbe "$(amixer | grep 'Playback.*\%' | sed 's/^.*[1234567890] //;1q')" &
elif [ $1 = 'mute' ]
then
	amixer sset Master unmute 0%
	herbe "$(amixer | grep 'Playback.*\%' | sed 's/^.*[1234567890] //;1q')" &
elif [ $1 = 'menu' ]
then
	echo -e '0%\n10%\n20%\n30%\n40%\n50%\n60%\n70%\n80%\n90%\n100%' | dmenu | xargs amixer sset Master
fi


