# platform = Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

declare -A REMOTE_METHODS=( ['auth.*']='^.*auth\.\*.*$' ['authpriv.*']='^.*authpriv\.\*.*$' ['daemon.*']='^.*daemon\.\*.*$' )

if [[ ! -f /etc/rsyslog.conf ]]; then
	# Something is not right, create the file
	touch /etc/rsyslog.conf
fi

APPEND_LINE=$(sed -rn '/^\S+\s+\/var\/log\/secure$/p' /etc/rsyslog.conf)

# Loop through the remote methods associative array
for K in ${!REMOTE_METHODS[@]}
do
	# Check to see if selector/value exists
	if ! grep -rq "${REMOTE_METHODS[$K]}" /etc/rsyslog.*; then
		# Make sure we have a line to insert after, otherwise append to end
		if [[ ! -z ${APPEND_LINE} ]]; then
			# Add selector to file
			sed -r -i "0,/^(\S+\s+\/var\/log\/secure$)/s//\1\n${K} \/var\/log\/secure/" /etc/rsyslog.conf
		else
			echo "${K} \/var\/log\/secure/" >> /etc/rsyslog.conf
		fi
	fi
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi