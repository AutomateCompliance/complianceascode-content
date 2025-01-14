# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_named_write_master_zones="(bash-populate var_named_write_master_zones)"


setsebool -P named_write_master_zones $var_named_write_master_zones

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi