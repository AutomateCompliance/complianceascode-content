# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_antivirus_can_scan_system="(bash-populate var_antivirus_can_scan_system)"


setsebool -P antivirus_can_scan_system $var_antivirus_can_scan_system

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi