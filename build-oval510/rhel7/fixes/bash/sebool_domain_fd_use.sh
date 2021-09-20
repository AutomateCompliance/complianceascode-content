# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_domain_fd_use="(bash-populate var_domain_fd_use)"


setsebool -P domain_fd_use $var_domain_fd_use

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi