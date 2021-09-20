# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_selinuxuser_udp_server="(bash-populate var_selinuxuser_udp_server)"


setsebool -P selinuxuser_udp_server $var_selinuxuser_udp_server

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi