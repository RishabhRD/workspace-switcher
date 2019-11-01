sudo gpasswd -a $USER input
sudo cp ./setLeft /usr/bin/setLeft
sudo cp ./setRight /usr/bin/setRight
sudo g++ setLeft.cc -o /usr/bin/setLeftinit
sudo g++ setRight.cc -o /usr/bin/setRightinit
sudo echo "gesture swipe left 3 setLeftinit" >> /etc/libinput-gestures.conf
sudo echo "gesture swipe right 3 setRightinit" >> /etc/libinput-gestures.conf
libinput-gestures-setup autostart
libinput-gestures-setup start
