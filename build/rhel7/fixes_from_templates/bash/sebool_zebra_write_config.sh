# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_zebra_write_config="(bash-populate var_zebra_write_config)"


setsebool -P zebra_write_config $var_zebra_write_config
