# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_fips_mode="(bash-populate var_fips_mode)"


setsebool -P fips_mode $var_fips_mode
