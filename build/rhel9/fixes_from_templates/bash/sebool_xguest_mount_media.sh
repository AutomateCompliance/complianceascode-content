# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_xguest_mount_media="(bash-populate var_xguest_mount_media)"


setsebool -P xguest_mount_media $var_xguest_mount_media
