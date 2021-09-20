# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_glance_use_execmem="(bash-populate var_glance_use_execmem)"


setsebool -P glance_use_execmem $var_glance_use_execmem

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi