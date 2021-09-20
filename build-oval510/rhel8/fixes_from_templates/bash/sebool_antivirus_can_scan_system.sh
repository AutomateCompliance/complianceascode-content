# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_antivirus_can_scan_system="(bash-populate var_antivirus_can_scan_system)"


setsebool -P antivirus_can_scan_system $var_antivirus_can_scan_system
