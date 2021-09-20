# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_xserver_clients_write_xshm="(bash-populate var_xserver_clients_write_xshm)"


setsebool -P xserver_clients_write_xshm $var_xserver_clients_write_xshm

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi