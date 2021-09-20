# platform = multi_platform_all
# reboot = true
# strategy = restrict
# complexity = low
# disruption = low


# remove packages
zypper remove -y "xorg-x11-server-Xorg"
zypper remove -y "xorg-x11-server-utils"
zypper remove -y "xorg-x11-server-common"

zypper remove -y "xorg-x11-server-Xwayland"


# configure run level
systemctl set-default multi-user.target