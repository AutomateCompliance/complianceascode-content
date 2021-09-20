# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_mcelog_exec_scripts="(bash-populate var_mcelog_exec_scripts)"


setsebool -P mcelog_exec_scripts $var_mcelog_exec_scripts
