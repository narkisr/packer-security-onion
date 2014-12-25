#!/bin/bash -eux

echo "==> Installing securityonion"
apt-get update
apt-get -y install python-software-properties
add-apt-repository -y ppa:securityonion/stable
echo "==> Added securityonion PPA"
apt-get update
echo "debconf debconf/frontend select noninteractive" | sudo debconf-set-selections
echo "==> Non interactive selection securityonion"
apt-get -y install securityonion-all
echo "==> Done installing securityonion"
