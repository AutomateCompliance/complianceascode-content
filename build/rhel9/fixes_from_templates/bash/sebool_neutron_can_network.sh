# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_neutron_can_network="(bash-populate var_neutron_can_network)"


setsebool -P neutron_can_network $var_neutron_can_network
