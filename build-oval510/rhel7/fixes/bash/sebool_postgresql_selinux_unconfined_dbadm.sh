# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_postgresql_selinux_unconfined_dbadm="(bash-populate var_postgresql_selinux_unconfined_dbadm)"


setsebool -P postgresql_selinux_unconfined_dbadm $var_postgresql_selinux_unconfined_dbadm

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi