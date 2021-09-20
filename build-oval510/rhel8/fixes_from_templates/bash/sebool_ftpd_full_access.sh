# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_ftpd_full_access="(bash-populate var_ftpd_full_access)"


setsebool -P ftpd_full_access $var_ftpd_full_access
