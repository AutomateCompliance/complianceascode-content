# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove ntpdate
#	   from the system, and may remove any packages
#	   that depend on ntpdate. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "ntpdate" ; then

    dnf remove -y "ntpdate"

fi