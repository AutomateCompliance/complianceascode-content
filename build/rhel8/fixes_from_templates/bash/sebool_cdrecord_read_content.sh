# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_cdrecord_read_content="(bash-populate var_cdrecord_read_content)"


setsebool -P cdrecord_read_content $var_cdrecord_read_content
