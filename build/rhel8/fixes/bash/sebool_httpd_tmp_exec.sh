# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_httpd_tmp_exec="(bash-populate var_httpd_tmp_exec)"


setsebool -P httpd_tmp_exec $var_httpd_tmp_exec

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi