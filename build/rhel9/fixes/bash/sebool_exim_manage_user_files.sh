# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_exim_manage_user_files="(bash-populate var_exim_manage_user_files)"


setsebool -P exim_manage_user_files $var_exim_manage_user_files

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi