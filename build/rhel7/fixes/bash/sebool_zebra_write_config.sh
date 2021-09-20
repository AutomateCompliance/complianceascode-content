# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_zebra_write_config="(bash-populate var_zebra_write_config)"


setsebool -P zebra_write_config $var_zebra_write_config

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi