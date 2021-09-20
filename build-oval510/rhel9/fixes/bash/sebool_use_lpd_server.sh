# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_use_lpd_server="(bash-populate var_use_lpd_server)"


setsebool -P use_lpd_server $var_use_lpd_server

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi