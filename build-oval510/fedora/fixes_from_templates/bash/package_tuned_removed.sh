# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove tuned
#	   from the system, and may remove any packages
#	   that depend on tuned. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "tuned" ; then

    dnf remove -y "tuned"

fi