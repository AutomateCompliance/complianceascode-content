# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_staff_use_svirt="(bash-populate var_staff_use_svirt)"


setsebool -P staff_use_svirt $var_staff_use_svirt
