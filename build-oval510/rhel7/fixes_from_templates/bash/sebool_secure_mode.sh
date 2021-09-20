# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_secure_mode="(bash-populate var_secure_mode)"


setsebool -P secure_mode $var_secure_mode
