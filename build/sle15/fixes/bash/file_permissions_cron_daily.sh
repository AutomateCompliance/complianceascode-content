# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

chmod 0700 /etc/cron.daily/

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi