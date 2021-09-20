# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_dbus_avahi="(bash-populate var_httpd_dbus_avahi)"


setsebool -P httpd_dbus_avahi $var_httpd_dbus_avahi
