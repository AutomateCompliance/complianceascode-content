# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_tftp_home_dir="(bash-populate var_tftp_home_dir)"


setsebool -P tftp_home_dir $var_tftp_home_dir
