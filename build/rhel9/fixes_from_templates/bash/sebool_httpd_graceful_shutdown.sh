# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_graceful_shutdown="(bash-populate var_httpd_graceful_shutdown)"


setsebool -P httpd_graceful_shutdown $var_httpd_graceful_shutdown
