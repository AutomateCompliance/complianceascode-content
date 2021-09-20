# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_mmap_low_allowed="(bash-populate var_mmap_low_allowed)"


setsebool -P mmap_low_allowed $var_mmap_low_allowed

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi