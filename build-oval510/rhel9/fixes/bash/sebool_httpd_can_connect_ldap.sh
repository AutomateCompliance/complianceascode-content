# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_httpd_can_connect_ldap="(bash-populate var_httpd_can_connect_ldap)"


setsebool -P httpd_can_connect_ldap $var_httpd_can_connect_ldap

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi