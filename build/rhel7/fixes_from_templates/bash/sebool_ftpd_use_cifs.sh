# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_ftpd_use_cifs="(bash-populate var_ftpd_use_cifs)"


setsebool -P ftpd_use_cifs $var_ftpd_use_cifs
