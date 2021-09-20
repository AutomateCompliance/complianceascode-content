# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_use_openstack="(bash-populate var_httpd_use_openstack)"


setsebool -P httpd_use_openstack $var_httpd_use_openstack
