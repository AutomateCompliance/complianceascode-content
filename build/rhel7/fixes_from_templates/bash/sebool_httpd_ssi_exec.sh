# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_ssi_exec="(bash-populate var_httpd_ssi_exec)"


setsebool -P httpd_ssi_exec $var_httpd_ssi_exec
