# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_samba_share_nfs="(bash-populate var_samba_share_nfs)"


setsebool -P samba_share_nfs $var_samba_share_nfs

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi