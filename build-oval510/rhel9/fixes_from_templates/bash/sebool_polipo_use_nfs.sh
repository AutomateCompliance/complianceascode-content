# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_polipo_use_nfs="(bash-populate var_polipo_use_nfs)"


setsebool -P polipo_use_nfs $var_polipo_use_nfs
