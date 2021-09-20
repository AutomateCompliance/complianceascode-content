# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_exim_can_connect_db="(bash-populate var_exim_can_connect_db)"


setsebool -P exim_can_connect_db $var_exim_can_connect_db
