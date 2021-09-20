# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_xend_run_qemu="(bash-populate var_xend_run_qemu)"


setsebool -P xend_run_qemu $var_xend_run_qemu
