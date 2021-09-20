# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_logging_syslogd_use_tty="(bash-populate var_logging_syslogd_use_tty)"


setsebool -P logging_syslogd_use_tty $var_logging_syslogd_use_tty

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi