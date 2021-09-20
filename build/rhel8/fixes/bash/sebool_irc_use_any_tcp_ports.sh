# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_irc_use_any_tcp_ports="(bash-populate var_irc_use_any_tcp_ports)"


setsebool -P irc_use_any_tcp_ports $var_irc_use_any_tcp_ports

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi