# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_samba_share_nfs="(bash-populate var_samba_share_nfs)"


setsebool -P samba_share_nfs $var_samba_share_nfs
