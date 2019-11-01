sudo gpasswd -a $USER input
sudo make install
sudo cp ./setRight /usr/bin/setRight
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
	" > /etc/libinput-gestures.conf
	sudo echo "gesture swipe left 3 setRightinit" >> /etc/libinput-gestures.conf
	sudo echo "gesture swipe right 3 setLeftinit" >> /etc/libinput-gestures.conf
	gesture swipe right 3 setLeftinit
fi
libinput-gestures-setup start
sudo cp ./init_server.sh /usr/bin/startSwitcher
sudo cp cronSet.sh /usr/bin/winSet
sudo chmod 777 /usr/bin/winSet
sudo chmod 777 /usr/bin/startSwitcher
./cronSet.sh
