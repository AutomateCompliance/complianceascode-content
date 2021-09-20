# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_deny_ptrace="(bash-populate var_deny_ptrace)"


setsebool -P deny_ptrace $var_deny_ptrace
