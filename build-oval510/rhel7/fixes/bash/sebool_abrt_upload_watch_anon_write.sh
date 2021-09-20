# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_abrt_upload_watch_anon_write="(bash-populate var_abrt_upload_watch_anon_write)"


setsebool -P abrt_upload_watch_anon_write $var_abrt_upload_watch_anon_write

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi