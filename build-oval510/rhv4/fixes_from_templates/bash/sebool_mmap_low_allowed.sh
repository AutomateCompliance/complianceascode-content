# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_mmap_low_allowed="(bash-populate var_mmap_low_allowed)"


setsebool -P mmap_low_allowed $var_mmap_low_allowed
