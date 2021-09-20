# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_authlogin_radius="(bash-populate var_authlogin_radius)"


setsebool -P authlogin_radius $var_authlogin_radius
