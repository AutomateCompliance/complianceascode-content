# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_dbadm_read_user_files="(bash-populate var_dbadm_read_user_files)"


setsebool -P dbadm_read_user_files $var_dbadm_read_user_files

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi