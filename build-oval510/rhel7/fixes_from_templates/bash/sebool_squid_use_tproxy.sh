# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_squid_use_tproxy="(bash-populate var_squid_use_tproxy)"


setsebool -P squid_use_tproxy $var_squid_use_tproxy
