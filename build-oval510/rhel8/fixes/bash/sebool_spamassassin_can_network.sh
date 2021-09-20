# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_spamassassin_can_network="(bash-populate var_spamassassin_can_network)"


setsebool -P spamassassin_can_network $var_spamassassin_can_network

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi