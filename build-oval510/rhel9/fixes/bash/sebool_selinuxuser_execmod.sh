# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_selinuxuser_execmod="(bash-populate var_selinuxuser_execmod)"


setsebool -P selinuxuser_execmod $var_selinuxuser_execmod

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi