#!/bin/bash

sleep 5
configure_ubuntu1204_autologin()
{
    USERNAME=vagrant
    LIGHTDM_CONFIG=/etc/lightdm/lightdm.conf

    echo "==> Configuring lightdm autologin"
    # rm $LIGHTDM_CONFIG
    /usr/lib/lightdm/lightdm-set-defaults --autologin $USERNAME
    if [ -f $LIGHTDM_CONFIG ]; then
        # echo "" >> $LIGHTDM_CONFIG
        echo "autologin-user=${USERNAME}" >> $LIGHTDM_CONFIG
        echo "autologin-user-timeout=0" >> $LIGHTDM_CONFIG
    fi
}

echo "==> Checking version of Ubuntu"
. /etc/lsb-release

if [[ $DISTRIB_RELEASE == 12.04 ]]; then
    # configure_ubuntu1204_autologin
    sed -i 's/^NODM_USER.*/NODM_USER=vagrant/g' /etc/default/nodm
    sed -i 's/^NODM_ENABLED*/NODM_ENABLED=true/g' /etc/default/nodm
    apt-get install -y gksu network-manager
fi
