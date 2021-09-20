# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_selinuxuser_udp_server="(bash-populate var_selinuxuser_udp_server)"


setsebool -P selinuxuser_udp_server $var_selinuxuser_udp_server
