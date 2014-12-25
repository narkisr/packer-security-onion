#!/bin/bash -eux


echo "==> Removing openssh-server"
rm /etc/init.d/ssh
rm /etc/init/ssh.conf
update-rc.d -f sshd remove

echo "==> Installing dropbear"
apt-get install dropbear
sed "s/NO_START=1/NO_START=0/g" -i /etc/default/dropbear 
cp /home/vagrant/.ssh/authorized_keys /etc/dropbear/

# waiting for network during boot fix
sed "s/sleep 40/sleep 5/g" -i /etc/init/failsafe.conf
sed "s/sleep 59//g" -i /etc/init/failsafe.conf
