# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove dhcp-server
#	   from the system, and may remove any packages
#	   that depend on dhcp-server. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "dhcp-server" ; then

    yum remove -y "dhcp-server"

fi