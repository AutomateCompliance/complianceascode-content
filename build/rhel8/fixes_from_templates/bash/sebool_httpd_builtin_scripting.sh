# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_builtin_scripting="(bash-populate var_httpd_builtin_scripting)"


setsebool -P httpd_builtin_scripting $var_httpd_builtin_scripting
