#!/bin/bash -eux

echo "==> Installing securityonion"
apt-get -y install python-software-properties
add-apt-repository -y ppa:securityonion/stable
apt-get update
echo "debconf debconf/frontend select noninteractive" | sudo debconf-set-selections
apt-get -y install securityonion-all
# sosetup
