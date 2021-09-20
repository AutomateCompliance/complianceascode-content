# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_glance_api_can_network="(bash-populate var_glance_api_can_network)"


setsebool -P glance_api_can_network $var_glance_api_can_network
