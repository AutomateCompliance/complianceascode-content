# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_zoneminder_run_sudo="(bash-populate var_zoneminder_run_sudo)"


setsebool -P zoneminder_run_sudo $var_zoneminder_run_sudo
