# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_pcp_read_generic_logs="(bash-populate var_pcp_read_generic_logs)"


setsebool -P pcp_read_generic_logs $var_pcp_read_generic_logs
