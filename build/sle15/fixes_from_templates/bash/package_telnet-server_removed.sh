# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove telnet-server
#	   from the system, and may remove any packages
#	   that depend on telnet-server. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

zypper remove -y "telnet-server"