# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_haproxy_connect_any="(bash-populate var_haproxy_connect_any)"


setsebool -P haproxy_connect_any $var_haproxy_connect_any

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi