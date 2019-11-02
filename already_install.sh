sudo gpasswd -a $USER input
sudo cp ./setLeft /usr/bin/setLeft
sudo g++ setLeft.cc -o /usr/bin/setLeftinit
sudo g++ setRight.cc -o /usr/bin/setRightinit
if [ "$1" == "--inverted" ]; then
	echo "gesture swipe left 3 setRightinit" > .tmp
	echo "gesture swipe right 3 setLeftinit" >> .tmp
	sudo mv .tmp /etc/libinput-gestures.conf
else
	sudo echo "gesture swipe left 3 setLeftinit" > .tmp
	sudo echo "gesture swipe right 3 setRightinit" >> .tmp
	sudo mv .tmp /etc/libinput-gestures.conf
fi
libinput-gestures-setup start
libinput-gestures-setup autostart
