# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_polipo_connect_all_unreserved="(bash-populate var_polipo_connect_all_unreserved)"


setsebool -P polipo_connect_all_unreserved $var_polipo_connect_all_unreserved
