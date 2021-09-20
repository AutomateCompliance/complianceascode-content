# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

chown 0 /etc/at.allow

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi