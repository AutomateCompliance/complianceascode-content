# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_samba_enable_home_dirs="(bash-populate var_samba_enable_home_dirs)"


setsebool -P samba_enable_home_dirs $var_samba_enable_home_dirs
