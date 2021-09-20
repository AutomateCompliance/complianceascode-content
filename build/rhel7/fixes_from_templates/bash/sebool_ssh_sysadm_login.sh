# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_ssh_sysadm_login="(bash-populate var_ssh_sysadm_login)"


setsebool -P ssh_sysadm_login $var_ssh_sysadm_login
