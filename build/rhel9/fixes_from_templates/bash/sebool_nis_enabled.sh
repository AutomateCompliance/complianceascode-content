# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_nis_enabled="(bash-populate var_nis_enabled)"


setsebool -P nis_enabled $var_nis_enabled
