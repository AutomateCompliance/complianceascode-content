# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_xguest_use_bluetooth="(bash-populate var_xguest_use_bluetooth)"


setsebool -P xguest_use_bluetooth $var_xguest_use_bluetooth
