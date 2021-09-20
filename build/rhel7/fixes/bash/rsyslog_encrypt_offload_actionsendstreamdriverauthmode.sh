# platform = Red Hat Virtualization 4,multi_platform_fedora,multi_platform_rhel
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! grep -s "\$ActionSendStreamDriverAuthMode\s*x509/name" /etc/rsyslog.conf /etc/rsyslog.d/*.conf; then
	mkdir -p /etc/rsyslog.d
    sed -i '/^.*\$ActionSendStreamDriverAuthMode.*/d' /etc/rsyslog.conf /etc/rsyslog.d/*.conf
    echo "\$ActionSendStreamDriverAuthMode x509/name" > /etc/rsyslog.d/stream_driver_auth.conf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi