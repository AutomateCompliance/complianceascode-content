# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_mpd_use_nfs="(bash-populate var_mpd_use_nfs)"


setsebool -P mpd_use_nfs $var_mpd_use_nfs
