# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove isc-dhcp-server
#	   from the system, and may remove any packages
#	   that depend on isc-dhcp-server. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "isc-dhcp-server"