# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_cdrecord_read_content="(bash-populate var_cdrecord_read_content)"


setsebool -P cdrecord_read_content $var_cdrecord_read_content

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi