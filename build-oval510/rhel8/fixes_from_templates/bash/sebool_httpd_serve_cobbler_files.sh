# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_serve_cobbler_files="(bash-populate var_httpd_serve_cobbler_files)"


setsebool -P httpd_serve_cobbler_files $var_httpd_serve_cobbler_files
