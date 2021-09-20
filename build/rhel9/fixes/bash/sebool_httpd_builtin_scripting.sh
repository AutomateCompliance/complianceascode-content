# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_httpd_builtin_scripting="(bash-populate var_httpd_builtin_scripting)"


setsebool -P httpd_builtin_scripting $var_httpd_builtin_scripting

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi