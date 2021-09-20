# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove openldap-clients
#	   from the system, and may remove any packages
#	   that depend on openldap-clients. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

zypper remove -y "openldap-clients"