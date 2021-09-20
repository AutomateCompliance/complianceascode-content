# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_gssd_read_tmp="(bash-populate var_gssd_read_tmp)"


setsebool -P gssd_read_tmp $var_gssd_read_tmp
