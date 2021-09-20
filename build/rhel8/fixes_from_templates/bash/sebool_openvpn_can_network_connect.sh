# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_openvpn_can_network_connect="(bash-populate var_openvpn_can_network_connect)"


setsebool -P openvpn_can_network_connect $var_openvpn_can_network_connect
