# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_cluster_can_network_connect="(bash-populate var_cluster_can_network_connect)"


setsebool -P cluster_can_network_connect $var_cluster_can_network_connect
