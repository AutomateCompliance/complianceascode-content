# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_authlogin_yubikey="(bash-populate var_authlogin_yubikey)"


setsebool -P authlogin_yubikey $var_authlogin_yubikey
