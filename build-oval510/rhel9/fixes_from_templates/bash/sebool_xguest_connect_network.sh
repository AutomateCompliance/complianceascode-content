# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_xguest_connect_network="(bash-populate var_xguest_connect_network)"


setsebool -P xguest_connect_network $var_xguest_connect_network
