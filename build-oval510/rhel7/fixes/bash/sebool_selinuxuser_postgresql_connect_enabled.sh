# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_selinuxuser_postgresql_connect_enabled="(bash-populate var_selinuxuser_postgresql_connect_enabled)"


setsebool -P selinuxuser_postgresql_connect_enabled $var_selinuxuser_postgresql_connect_enabled

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi