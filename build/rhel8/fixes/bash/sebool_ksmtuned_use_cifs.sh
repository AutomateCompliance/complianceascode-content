# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_ksmtuned_use_cifs="(bash-populate var_ksmtuned_use_cifs)"


setsebool -P ksmtuned_use_cifs $var_ksmtuned_use_cifs

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi