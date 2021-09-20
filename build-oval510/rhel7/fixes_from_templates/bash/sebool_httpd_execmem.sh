# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_execmem="(bash-populate var_httpd_execmem)"


setsebool -P httpd_execmem $var_httpd_execmem
