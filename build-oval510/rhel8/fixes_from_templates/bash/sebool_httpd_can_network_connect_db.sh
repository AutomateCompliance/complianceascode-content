# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_can_network_connect_db="(bash-populate var_httpd_can_network_connect_db)"


setsebool -P httpd_can_network_connect_db $var_httpd_can_network_connect_db
