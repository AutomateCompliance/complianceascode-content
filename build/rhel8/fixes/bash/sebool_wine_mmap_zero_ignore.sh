# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_wine_mmap_zero_ignore="(bash-populate var_wine_mmap_zero_ignore)"


setsebool -P wine_mmap_zero_ignore $var_wine_mmap_zero_ignore

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi