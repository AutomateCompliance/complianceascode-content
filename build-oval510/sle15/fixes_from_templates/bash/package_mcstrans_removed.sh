# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove mcstrans
#	   from the system, and may remove any packages
#	   that depend on mcstrans. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

zypper remove -y "mcstrans"