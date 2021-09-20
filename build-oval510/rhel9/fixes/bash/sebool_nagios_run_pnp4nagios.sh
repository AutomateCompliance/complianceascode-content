# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_nagios_run_pnp4nagios="(bash-populate var_nagios_run_pnp4nagios)"


setsebool -P nagios_run_pnp4nagios $var_nagios_run_pnp4nagios

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi