#!/bin/bash -eux

dpkg --list | grep linux-image | awk '{print $2}' | xargs sudo apt-get remove -y
# apt-get remove -y linux-image-3.11.0-15-generic
apt-get update
apt-get install linux-image-3.8.0-42-generic linux-headers-3.8.0-42-generic -y
# /usr/sbin/update-grub
shutdown -r 0
