# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove setroubleshoot-server
#	   from the system, and may remove any packages
#	   that depend on setroubleshoot-server. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "setroubleshoot-server" ; then

    dnf remove -y "setroubleshoot-server"

fi