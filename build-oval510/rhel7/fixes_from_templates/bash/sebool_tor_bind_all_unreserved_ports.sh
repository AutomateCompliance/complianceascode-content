# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low


var_tor_bind_all_unreserved_ports="(bash-populate var_tor_bind_all_unreserved_ports)"


setsebool -P tor_bind_all_unreserved_ports $var_tor_bind_all_unreserved_ports
