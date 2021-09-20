# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_abrt_handle_event="(bash-populate var_abrt_handle_event)"


setsebool -P abrt_handle_event $var_abrt_handle_event

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi