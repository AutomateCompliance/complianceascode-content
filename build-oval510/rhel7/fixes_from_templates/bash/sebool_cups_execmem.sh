# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_cups_execmem="(bash-populate var_cups_execmem)"


setsebool -P cups_execmem $var_cups_execmem
