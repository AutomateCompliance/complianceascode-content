# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_anon_write="(bash-populate var_httpd_anon_write)"


setsebool -P httpd_anon_write $var_httpd_anon_write
