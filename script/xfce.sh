#!/bin/bash -eux

echo "==> Installing xfce"
apt-get update
apt-get install xfce4 -y
shutdown -r 0
