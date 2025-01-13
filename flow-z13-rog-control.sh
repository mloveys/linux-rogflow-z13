#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo "You must run this script with sudo/root to complete installation"
  exit 1
fi

apt install git -y
gitclone git@gitlab.com:asus-linux/asusctl.git

cd asusctl
# may need libinput10, installed before but rust compile failed until libinput-dev was installed
apt install libclang-dev libudev-dev libfontconfig-dev build-essential cmake libxkbcommon-dev libgbm-dev libinput-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
make
sudo make install

echo 'Installation complete. enabling and starting asusd service in a few seconds...'
sleep 3

systemctl enable asusd
systemctl start asusd
