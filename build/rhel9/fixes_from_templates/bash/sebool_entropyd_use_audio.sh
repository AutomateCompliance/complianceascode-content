# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_entropyd_use_audio="(bash-populate var_entropyd_use_audio)"


setsebool -P entropyd_use_audio $var_entropyd_use_audio
