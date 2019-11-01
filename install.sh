sudo gpasswd -a $USER input
sudo make install
sudo cp ./setLeft /usr/bin/setLeft
sudo cp ./setRight /usr/bin/setRight
sudo g++ setLeft.cc -o /usr/bin/setLeftinit
sudo g++ setRight.cc -o /usr/bin/setRightinit
