# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_ftpd_use_fusefs="(bash-populate var_ftpd_use_fusefs)"


setsebool -P ftpd_use_fusefs $var_ftpd_use_fusefs
