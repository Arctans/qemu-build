#!/bin/bash
##########################################################################
# File Name: make_my_qemu.sh
# Author: Arctan
# Created Time: Fri 23 Feb 2024 11:25:23 PM PST
#########################################################################
#sudo apt-get install libattr1-dev
#sudo apt-get install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev libgtk-3-dev 
#libsdl2-dev libspice-protocol-dev libspice-server-dev libusb-dev libusbredirparser-dev libusb-1.0-0-dev libnuma-dev libcap-ng-dev libattr1-dev libaio-dev
#sudo apt install libgles2-mesa-dev libxcb-composite0-dev libxcursor-dev   libcairo2-dev libgbm-dev libpam0g-dev
cd qemu-6.2.0 
./configure --prefix=/usr  --enable-virtfs --enable-kvm --enable-sdl --enable-debug --enable-tpm --enable-vnc
make -j24
sudo make install
cd -
