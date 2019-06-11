#!/usr/bin/env bash

echo "installing dependencies" &&
sudo apt-get install linux-headers-generic build-essential git -y &&
echo "***Compiling***" &&
make &&
echo "installing driver" &&
sudo make install &&
echo "setting modprobe" &&
sudo modprobe 88x2bu &&
echo "done! plug your adapter :D"