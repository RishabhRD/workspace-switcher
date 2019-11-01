while [ ! xset q &>/dev/null ]; 
do
	sleep 1
done
libinput-gestures-setup start
