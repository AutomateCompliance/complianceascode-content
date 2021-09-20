# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_fenced_can_ssh="(bash-populate var_fenced_can_ssh)"


setsebool -P fenced_can_ssh $var_fenced_can_ssh
