# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_virt_sandbox_use_netlink="(bash-populate var_virt_sandbox_use_netlink)"


setsebool -P virt_sandbox_use_netlink $var_virt_sandbox_use_netlink
