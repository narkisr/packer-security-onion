#!/bin/bash -eux

apt-get update
apt-get upgrade -y
dpkg --list | grep linux-image | awk '{print $2}' | xargs sudo apt-get remove -y
apt-get install linux-image-3.8.0-42-generic linux-headers-3.8.0-42-generic -y
shutdown -r 0
