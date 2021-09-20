# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_mcelog_exec_scripts="(bash-populate var_mcelog_exec_scripts)"


setsebool -P mcelog_exec_scripts $var_mcelog_exec_scripts

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi