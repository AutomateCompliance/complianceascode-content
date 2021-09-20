# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_boinc_execmem="(bash-populate var_boinc_execmem)"


setsebool -P boinc_execmem $var_boinc_execmem
