# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_gluster_export_all_ro="(bash-populate var_gluster_export_all_ro)"


setsebool -P gluster_export_all_ro $var_gluster_export_all_ro