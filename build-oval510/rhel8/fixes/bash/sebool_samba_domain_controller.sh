# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_samba_domain_controller="(bash-populate var_samba_domain_controller)"


setsebool -P samba_domain_controller $var_samba_domain_controller

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi