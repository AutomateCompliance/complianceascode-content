# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_tftp_home_dir="(bash-populate var_tftp_home_dir)"


setsebool -P tftp_home_dir $var_tftp_home_dir

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi