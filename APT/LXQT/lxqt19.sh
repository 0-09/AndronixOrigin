#!/bin/bash

#Get the necessary components
sudo apt-mark hold udisks2
sudo apt-get update -y
sudo apt-get install lxqt-core lxqt-config qterminal tightvncserver -y
sudo apt-get install xfe -y
sudo apt-get clean


echo " "
echo "You can now start vncserver by running vncserver-start"
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
echo "Connect to this address will open a window with LXQt Desktop Environment"
echo " "
echo " "
echo " "
echo "Running vncserver-start"
echo " "
echo " "
echo " "
echo "To Kill VNC Server just run vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start
