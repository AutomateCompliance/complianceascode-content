# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_mplayer_execstack="(bash-populate var_mplayer_execstack)"


setsebool -P mplayer_execstack $var_mplayer_execstack
