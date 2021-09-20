# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_cron_system_cronjob_use_shares="(bash-populate var_cron_system_cronjob_use_shares)"


setsebool -P cron_system_cronjob_use_shares $var_cron_system_cronjob_use_shares

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi