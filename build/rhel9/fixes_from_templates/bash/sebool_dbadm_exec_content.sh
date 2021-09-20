# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_dbadm_exec_content="(bash-populate var_dbadm_exec_content)"


setsebool -P dbadm_exec_content $var_dbadm_exec_content
