# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_varnishd_connect_any="(bash-populate var_varnishd_connect_any)"


setsebool -P varnishd_connect_any $var_varnishd_connect_any
