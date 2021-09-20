# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_dhcpc_exec_iptables="(bash-populate var_dhcpc_exec_iptables)"


setsebool -P dhcpc_exec_iptables $var_dhcpc_exec_iptables

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi