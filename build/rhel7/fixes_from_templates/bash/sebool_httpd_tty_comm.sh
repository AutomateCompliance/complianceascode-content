# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_tty_comm="(bash-populate var_httpd_tty_comm)"


setsebool -P httpd_tty_comm $var_httpd_tty_comm
