# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_samba_load_libgfapi="(bash-populate var_samba_load_libgfapi)"


setsebool -P samba_load_libgfapi $var_samba_load_libgfapi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi