# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_domain_kernel_load_modules="(bash-populate var_domain_kernel_load_modules)"


setsebool -P domain_kernel_load_modules $var_domain_kernel_load_modules
