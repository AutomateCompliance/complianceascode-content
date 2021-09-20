# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_postfix_local_write_mail_spool="(bash-populate var_postfix_local_write_mail_spool)"


setsebool -P postfix_local_write_mail_spool $var_postfix_local_write_mail_spool

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi