# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_virt_sandbox_use_all_caps="(bash-populate var_virt_sandbox_use_all_caps)"


setsebool -P virt_sandbox_use_all_caps $var_virt_sandbox_use_all_caps
