# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_tor_can_network_relay="(bash-populate var_tor_can_network_relay)"


setsebool -P tor_can_network_relay $var_tor_can_network_relay
