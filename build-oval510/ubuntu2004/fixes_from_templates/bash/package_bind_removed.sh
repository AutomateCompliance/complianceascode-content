# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove bind9
#	   from the system, and may remove any packages
#	   that depend on bind9. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "bind9"