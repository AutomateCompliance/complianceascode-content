# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_samba_run_unconfined="(bash-populate var_samba_run_unconfined)"


setsebool -P samba_run_unconfined $var_samba_run_unconfined
