# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_nscd_use_shm="(bash-populate var_nscd_use_shm)"


setsebool -P nscd_use_shm $var_nscd_use_shm
