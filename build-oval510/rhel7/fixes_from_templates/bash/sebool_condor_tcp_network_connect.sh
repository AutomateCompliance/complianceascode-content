# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_condor_tcp_network_connect="(bash-populate var_condor_tcp_network_connect)"


setsebool -P condor_tcp_network_connect $var_condor_tcp_network_connect
