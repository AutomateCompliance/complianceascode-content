# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
if [ -e "/etc/audit/auditd.conf" ] ; then
    
    LC_ALL=C sed -i "/^\s*name_format\s*=\s*/Id" "/etc/audit/auditd.conf"
else
    touch "/etc/audit/auditd.conf"
fi
cp "/etc/audit/auditd.conf" "/etc/audit/auditd.conf.bak"
# Insert at the end of the file
printf '%s\n' "name_format = hostname" >> "/etc/audit/auditd.conf"
# Clean up after ourselves.
rm "/etc/audit/auditd.conf.bak"