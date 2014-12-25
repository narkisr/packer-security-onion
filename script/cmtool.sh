#!/bin/bash -eux

echo "==> Installing Puppet"
wget https://gist.githubusercontent.com/narkisr/6097786/raw/4b62bb2e557de08608117e788d092dac5025ca6e/puppet-preqs.sh
chmod +x puppet-preqs.sh
/bin/bash puppet-preqs.sh
