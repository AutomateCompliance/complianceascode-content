# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_pppd_can_insmod="(bash-populate var_pppd_can_insmod)"


setsebool -P pppd_can_insmod $var_pppd_can_insmod
