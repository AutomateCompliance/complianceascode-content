# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_daemons_enable_cluster_mode="(bash-populate var_daemons_enable_cluster_mode)"


setsebool -P daemons_enable_cluster_mode $var_daemons_enable_cluster_mode
