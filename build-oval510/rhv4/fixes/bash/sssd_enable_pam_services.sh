# platform = Red Hat Virtualization 4,multi_platform_rhel,multi_platform_ol
# Remediation is applicable only in certain platforms
if rpm --quiet -q sssd-common; then

SSSD_CONF="/etc/sssd/sssd.conf"
SSSD_CONF_DIR="/etc/sssd/conf.d/*.conf"

for f in $SSSD_CONF $SSSD_CONF_DIR; do
	if [ ! -e "$f" ]; then
		continue
	fi
	# finds all services entries under [sssd] configuration category, get a unique list so it doesn't add redundant fix
	services_list=$( awk '/^\s*\[/{f=0} /^\s*\[sssd\]/{f=1}f' $f | grep -P '^services[ \t]*=' | uniq )

	while IFS= read -r services; do
		if [[ ! $services =~ "pam" ]]; then
			sed -i "s/$services$/&, pam/" $f
		fi
	done <<< "$services_list"
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi