# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_ssh_chroot_rw_homedirs="(bash-populate var_ssh_chroot_rw_homedirs)"


setsebool -P ssh_chroot_rw_homedirs $var_ssh_chroot_rw_homedirs

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi