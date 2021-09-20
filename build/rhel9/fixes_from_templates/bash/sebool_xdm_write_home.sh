# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_xdm_write_home="(bash-populate var_xdm_write_home)"


setsebool -P xdm_write_home $var_xdm_write_home
