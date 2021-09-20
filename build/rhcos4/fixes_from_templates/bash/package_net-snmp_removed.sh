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

printf '%s\n' "Can't generate a remediation for product rhcos4, because there is no pkg_manager set in product.yml" >&2
exit 1