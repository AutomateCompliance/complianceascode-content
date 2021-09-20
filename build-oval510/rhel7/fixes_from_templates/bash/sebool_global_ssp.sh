# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_global_ssp="(bash-populate var_global_ssp)"


setsebool -P global_ssp $var_global_ssp
