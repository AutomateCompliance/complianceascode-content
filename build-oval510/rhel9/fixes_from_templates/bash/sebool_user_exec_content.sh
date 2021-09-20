# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_user_exec_content="(bash-populate var_user_exec_content)"


setsebool -P user_exec_content $var_user_exec_content
