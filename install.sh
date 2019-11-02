sudo gpasswd -a $USER input
sudo make install
sudo cp ./setLeft /usr/bin/setLeft
sudo g++ setLeft.cc -o /usr/bin/setLeftinit
sudo g++ setRight.cc -o /usr/bin/setRightinit
if [ "$1" == "--inverted" ]; then
	printf "
	#syntax:
	#gesture <action> <motion> <num-fingers> <command>
	# where action and motion is either:
	#     swipe up
	#     swipe down
	#     swipe left
	#     swipe right
	#     swipe left_up
	#     swipe left_down
	#     swipe right_up
	#     swipe right_down
	#     pinch in
	#     pinch out
	#     pinch clockwise
	#     pinch anticlockwise
	" > .tmp
	echo "gesture swipe left 3 setRightinit" >> .tmp
	echo "gesture swipe right 3 setLeftinit" >> .tmp
	sudo mv .tmp /etc/libinput-gestures.conf
fi
libinput-gestures-setup start
libinput-gestures-setip autostart
