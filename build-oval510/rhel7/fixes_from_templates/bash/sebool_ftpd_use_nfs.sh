# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_ftpd_use_nfs="(bash-populate var_ftpd_use_nfs)"


setsebool -P ftpd_use_nfs $var_ftpd_use_nfs
