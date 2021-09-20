# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_httpd_tty_comm="(bash-populate var_httpd_tty_comm)"


setsebool -P httpd_tty_comm $var_httpd_tty_comm

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi