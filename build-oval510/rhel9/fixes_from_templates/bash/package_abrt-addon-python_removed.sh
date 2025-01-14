# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove abrt-addon-python
#	   from the system, and may remove any packages
#	   that depend on abrt-addon-python. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "abrt-addon-python" ; then

    dnf remove -y "abrt-addon-python"

fi