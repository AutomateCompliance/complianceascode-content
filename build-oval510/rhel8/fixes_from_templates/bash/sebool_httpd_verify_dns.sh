# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_verify_dns="(bash-populate var_httpd_verify_dns)"


setsebool -P httpd_verify_dns $var_httpd_verify_dns
