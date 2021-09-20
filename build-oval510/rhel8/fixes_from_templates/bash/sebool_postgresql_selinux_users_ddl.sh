# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_postgresql_selinux_users_ddl="(bash-populate var_postgresql_selinux_users_ddl)"


setsebool -P postgresql_selinux_users_ddl $var_postgresql_selinux_users_ddl
