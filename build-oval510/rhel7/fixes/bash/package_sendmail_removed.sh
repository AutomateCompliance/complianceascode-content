# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# CAUTION: This remediation script will remove sendmail
#	   from the system, and may remove any packages
#	   that depend on sendmail. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "sendmail" ; then

    yum remove -y "sendmail"

fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi