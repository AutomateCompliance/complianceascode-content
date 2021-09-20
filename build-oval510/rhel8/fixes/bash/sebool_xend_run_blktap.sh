# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_xend_run_blktap="(bash-populate var_xend_run_blktap)"


setsebool -P xend_run_blktap $var_xend_run_blktap

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi