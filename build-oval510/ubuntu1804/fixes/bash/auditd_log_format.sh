# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if dpkg-query --show --showformat='${db:Status-Status}\n' 'audit' 2>/dev/null | grep -q installed; then

if [ -e "/etc/audit/auditd.conf" ] ; then
    
    LC_ALL=C sed -i "/^\s*log_format\s*=\s*/Id" "/etc/audit/auditd.conf"
else
    touch "/etc/audit/auditd.conf"
fi
cp "/etc/audit/auditd.conf" "/etc/audit/auditd.conf.bak"
# Insert at the end of the file
printf '%s\n' "log_format = ENRICHED" >> "/etc/audit/auditd.conf"
# Clean up after ourselves.
rm "/etc/audit/auditd.conf.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi