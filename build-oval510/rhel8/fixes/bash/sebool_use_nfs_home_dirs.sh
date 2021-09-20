# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_use_nfs_home_dirs="(bash-populate var_use_nfs_home_dirs)"


setsebool -P use_nfs_home_dirs $var_use_nfs_home_dirs

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi