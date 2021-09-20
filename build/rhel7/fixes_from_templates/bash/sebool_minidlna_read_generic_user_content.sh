# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_minidlna_read_generic_user_content="(bash-populate var_minidlna_read_generic_user_content)"


setsebool -P minidlna_read_generic_user_content $var_minidlna_read_generic_user_content
