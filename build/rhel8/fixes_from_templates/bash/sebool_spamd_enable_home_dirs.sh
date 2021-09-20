# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_spamd_enable_home_dirs="(bash-populate var_spamd_enable_home_dirs)"


setsebool -P spamd_enable_home_dirs $var_spamd_enable_home_dirs
