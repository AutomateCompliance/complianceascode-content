# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_samba_portmapper="(bash-populate var_samba_portmapper)"


setsebool -P samba_portmapper $var_samba_portmapper
