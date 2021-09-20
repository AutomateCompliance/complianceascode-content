# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_selinuxuser_postgresql_connect_enabled="(bash-populate var_selinuxuser_postgresql_connect_enabled)"


setsebool -P selinuxuser_postgresql_connect_enabled $var_selinuxuser_postgresql_connect_enabled
