# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_awstats_purge_apache_log_files="(bash-populate var_awstats_purge_apache_log_files)"


setsebool -P awstats_purge_apache_log_files $var_awstats_purge_apache_log_files
