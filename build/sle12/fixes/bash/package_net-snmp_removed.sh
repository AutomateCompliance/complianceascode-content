# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove net-snmp
#	   from the system, and may remove any packages
#	   that depend on net-snmp. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

zypper remove -y "net-snmp"