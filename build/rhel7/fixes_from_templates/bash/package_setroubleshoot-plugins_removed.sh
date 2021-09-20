# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove setroubleshoot-plugins
#	   from the system, and may remove any packages
#	   that depend on setroubleshoot-plugins. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "setroubleshoot-plugins" ; then

    yum remove -y "setroubleshoot-plugins"

fi