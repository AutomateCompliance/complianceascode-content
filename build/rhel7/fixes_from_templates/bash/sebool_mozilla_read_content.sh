# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_mozilla_read_content="(bash-populate var_mozilla_read_content)"


setsebool -P mozilla_read_content $var_mozilla_read_content
