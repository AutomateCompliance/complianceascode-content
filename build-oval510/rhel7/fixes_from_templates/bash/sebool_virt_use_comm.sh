# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_virt_use_comm="(bash-populate var_virt_use_comm)"


setsebool -P virt_use_comm $var_virt_use_comm
