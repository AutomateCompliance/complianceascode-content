# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" unmask 'iptables.service'
"$SYSTEMCTL_EXEC" start 'iptables.service'
"$SYSTEMCTL_EXEC" enable 'iptables.service'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi