# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_unified="(bash-populate var_httpd_unified)"


setsebool -P httpd_unified $var_httpd_unified
