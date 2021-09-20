# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_httpd_run_stickshift="(bash-populate var_httpd_run_stickshift)"


setsebool -P httpd_run_stickshift $var_httpd_run_stickshift
