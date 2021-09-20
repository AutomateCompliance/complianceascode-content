# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_can_check_spam="(bash-populate var_httpd_can_check_spam)"


setsebool -P httpd_can_check_spam $var_httpd_can_check_spam
