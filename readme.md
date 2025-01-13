# Fixes for ROG Flow Z13 to run on Zorin OS (Ubuntu/Debian)
These scripts are provided as-is, while they worked for me they may not for you.


`flow-z13-mousefix.sh` will need to run as root which will add a script to sbin and a udev rule to trigger when the keyboard connects
`flow-z13-rog-control.sh` will clone the asusctl repo, install dependencies required by the go compiler, and enable/start the asusd service

## System Information (Tested)
ASUS ROG Flow Z13 GZ301ZE
Mesa Intel® Graphics (ADL GT2)
NVIDIA GeForce RTX 3050 Ti Laptop GPU
12th Gen Intel® Core™ i9-12900H

Running Zorin OS 17.2 Pro (based on Debian & Ubuntu upstream)

## References
[Touchpad recognised as a mouse Asus ROG Z Flow 13](https://forums.linuxmint.com/viewtopic.php?t=422004)
[asus-linux/asusctl](https://gitlab.com/asus-linux/asusctl/-/tree/main)
