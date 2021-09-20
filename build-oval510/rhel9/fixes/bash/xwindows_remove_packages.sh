# platform = multi_platform_all
# reboot = true
# strategy = restrict
# complexity = low
# disruption = low


# remove packages
if rpm -q --quiet "xorg-x11-server-Xorg" ; then

    dnf remove -y "xorg-x11-server-Xorg"

fi
if rpm -q --quiet "xorg-x11-server-utils" ; then

    dnf remove -y "xorg-x11-server-utils"

fi
if rpm -q --quiet "xorg-x11-server-common" ; then

    dnf remove -y "xorg-x11-server-common"

fi

if rpm -q --quiet "xorg-x11-server-Xwayland" ; then

    dnf remove -y "xorg-x11-server-Xwayland"

fi


# configure run level
systemctl set-default multi-user.target