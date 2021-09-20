# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_glance_use_execmem="(bash-populate var_glance_use_execmem)"


setsebool -P glance_use_execmem $var_glance_use_execmem
