# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_saslauthd_read_shadow="(bash-populate var_saslauthd_read_shadow)"


setsebool -P saslauthd_read_shadow $var_saslauthd_read_shadow

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi