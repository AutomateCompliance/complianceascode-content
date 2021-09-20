# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ] && { rpm --quiet -q chrony; }; then

if grep -q 'OPTIONS=.*' /etc/sysconfig/chronyd; then
	# trying to solve cases where the parameter after OPTIONS
	#may or may not be enclosed in quotes
	sed -i -E -e 's/\s*-u\s+\w+\s*/ /' -e 's/^([\s]*OPTIONS=["]?[^"]*)("?)/\1 -u chrony\2/' /etc/sysconfig/chronyd
else
	echo 'OPTIONS="-u chrony"' >> /etc/sysconfig/chronyd
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi