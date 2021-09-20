# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_webadm_manage_user_files="(bash-populate var_webadm_manage_user_files)"


setsebool -P webadm_manage_user_files $var_webadm_manage_user_files
