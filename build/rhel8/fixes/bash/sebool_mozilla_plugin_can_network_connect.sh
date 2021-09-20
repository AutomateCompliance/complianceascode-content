# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_mozilla_plugin_can_network_connect="(bash-populate var_mozilla_plugin_can_network_connect)"


setsebool -P mozilla_plugin_can_network_connect $var_mozilla_plugin_can_network_connect

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi