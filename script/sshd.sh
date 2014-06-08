#!/bin/bash -eux

sed -i 's/^#ListenAddress 0.0.0.0$/ListenAddress 0.0.0.0/g' /etc/ssh/sshd_config
echo "UseDNS no" >> /etc/ssh/sshd_config
