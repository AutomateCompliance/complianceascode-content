# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_git_session_users="(bash-populate var_git_session_users)"


setsebool -P git_session_users $var_git_session_users
