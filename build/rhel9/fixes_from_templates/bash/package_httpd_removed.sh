# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove httpd
#	   from the system, and may remove any packages
#	   that depend on httpd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "httpd" ; then

    dnf remove -y "httpd"

fi