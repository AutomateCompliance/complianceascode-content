# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_git_session_users="(bash-populate var_git_session_users)"


setsebool -P git_session_users $var_git_session_users

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi