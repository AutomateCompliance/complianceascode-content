# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_racoon_read_shadow="(bash-populate var_racoon_read_shadow)"


setsebool -P racoon_read_shadow $var_racoon_read_shadow
