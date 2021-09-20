# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_nagios_run_sudo="(bash-populate var_nagios_run_sudo)"


setsebool -P nagios_run_sudo $var_nagios_run_sudo
