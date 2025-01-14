# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove ypbind
#	   from the system, and may remove any packages
#	   that depend on ypbind. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "ypbind" ; then

    dnf remove -y "ypbind"

fi