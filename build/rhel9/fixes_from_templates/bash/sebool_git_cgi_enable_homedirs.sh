# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_git_cgi_enable_homedirs="(bash-populate var_git_cgi_enable_homedirs)"


setsebool -P git_cgi_enable_homedirs $var_git_cgi_enable_homedirs
