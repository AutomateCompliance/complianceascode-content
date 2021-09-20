# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_samba_domain_controller="(bash-populate var_samba_domain_controller)"


setsebool -P samba_domain_controller $var_samba_domain_controller
