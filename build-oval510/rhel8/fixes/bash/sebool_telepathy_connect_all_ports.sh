# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_telepathy_connect_all_ports="(bash-populate var_telepathy_connect_all_ports)"


setsebool -P telepathy_connect_all_ports $var_telepathy_connect_all_ports

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi