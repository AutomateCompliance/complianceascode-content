# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_xguest_use_bluetooth="(bash-populate var_xguest_use_bluetooth)"


setsebool -P xguest_use_bluetooth $var_xguest_use_bluetooth

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi