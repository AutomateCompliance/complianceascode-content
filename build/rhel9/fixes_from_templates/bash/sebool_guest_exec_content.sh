# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_guest_exec_content="(bash-populate var_guest_exec_content)"


setsebool -P guest_exec_content $var_guest_exec_content
