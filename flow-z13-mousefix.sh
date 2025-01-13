#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo "You must run this script with sudo/root to complete installation"
  exit 1
fi

base64 -d <<fixtouchpad >/usr/sbin/fix-touchpad
IyEvYmluL2Jhc2gKdG91Y2hwYWRJRD0kKHN1ZG8gZG1lc2cgfCBncmVwICJhc3VzIDAwMDM6MEIw
NToxQTMwLiogVVNCIEhJRCB2MS4xMCBNb3VzZSIgfCBncmVwIC1vICIwMDAzOjBCMDU6MUEzMFwu
WzAtOSxBLUZdKiIgfCB0YWlsIC0xKQplY2hvIC1uICIkdG91Y2hwYWRJRCIgPiAvc3lzL2J1cy9o
aWQvZHJpdmVycy9hc3VzL3VuYmluZAplY2hvIC1uICIkdG91Y2hwYWRJRCIgPiAvc3lzL2J1cy9o
aWQvZHJpdmVycy9oaWQtbXVsdGl0b3VjaC9iaW5kCg==
fixtouchpad

chmod +x /usr/sbin/fix-touchpad
/usr/sbin/fix-touchpad

base64 -d <<udevrule >/etc/udev/rules.d/99-fix-touchpad.rules
QUNUSU9OPT0iYWRkIiwgS0VSTkVMPT0iMDAwMzowQjA1OjFBMzAuKiIsIFNVQlNZU1RFTT09Imhp
ZCIsIFwKUlVOKz0iL2Jpbi9iYXNoIC1jICdzaCAvdXNyL3NiaW4vZml4LXRvdWNocGFkJyIK
udevrule
