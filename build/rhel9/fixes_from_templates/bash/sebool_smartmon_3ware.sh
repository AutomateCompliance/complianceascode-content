# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_smartmon_3ware="(bash-populate var_smartmon_3ware)"


setsebool -P smartmon_3ware $var_smartmon_3ware
