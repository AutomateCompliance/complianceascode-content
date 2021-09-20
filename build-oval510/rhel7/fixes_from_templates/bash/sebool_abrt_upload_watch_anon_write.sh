# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_abrt_upload_watch_anon_write="(bash-populate var_abrt_upload_watch_anon_write)"


setsebool -P abrt_upload_watch_anon_write $var_abrt_upload_watch_anon_write
