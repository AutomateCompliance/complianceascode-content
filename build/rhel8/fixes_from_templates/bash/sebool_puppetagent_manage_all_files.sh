# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_puppetagent_manage_all_files="(bash-populate var_puppetagent_manage_all_files)"


setsebool -P puppetagent_manage_all_files $var_puppetagent_manage_all_files
