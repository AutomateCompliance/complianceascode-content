# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_tmp_exec="(bash-populate var_httpd_tmp_exec)"


setsebool -P httpd_tmp_exec $var_httpd_tmp_exec
