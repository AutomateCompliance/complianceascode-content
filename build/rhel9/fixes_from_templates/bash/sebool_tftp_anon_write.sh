# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_tftp_anon_write="(bash-populate var_tftp_anon_write)"


setsebool -P tftp_anon_write $var_tftp_anon_write
