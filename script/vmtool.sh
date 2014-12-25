#!/bin/bash -eux

echo "==> Installing VirtualBox guest additions"
# Assuming the following packages are installed
apt-get install -y linux-headers-$(uname -r) build-essential perl
apt-get install -y dkms

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso
rm /home/vagrant/.vbox_version
