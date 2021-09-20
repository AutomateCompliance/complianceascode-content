# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora
# Remediation is applicable only in certain platforms
if rpm --quiet -q net-snmp; then

if grep -s "rwuser" /etc/snmp/snmpd.conf | grep -qv "^#"; then
	sed -i "/^\s*#/b;/rwuser/ s/^/#/" /etc/snmp/snmpd.conf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi