# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_ssh_chroot_rw_homedirs="(bash-populate var_ssh_chroot_rw_homedirs)"


setsebool -P ssh_chroot_rw_homedirs $var_ssh_chroot_rw_homedirs
