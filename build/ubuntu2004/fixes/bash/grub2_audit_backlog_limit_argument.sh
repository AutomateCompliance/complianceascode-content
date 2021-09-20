# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ] && { dpkg-query --show --showformat='${db:Status-Status}\n' 'grub2-common' 2>/dev/null | grep -q installed; }; then

# Correct the form of default kernel command line in GRUB
if grep -q '^GRUB_CMDLINE_LINUX=.*audit_backlog_limit=.*"'  '/etc/default/grub' ; then
	# modify the GRUB command-line if an audit_backlog_limit= arg already exists
	sed -i 's/\(^GRUB_CMDLINE_LINUX=".*\)audit_backlog_limit=[^[:space:]]*\(.*"\)/\1 audit_backlog_limit=8192 \2/'  '/etc/default/grub'
else
	# no audit_backlog_limit=arg is present, append it
	sed -i 's/\(^GRUB_CMDLINE_LINUX=".*\)"/\1 audit_backlog_limit=8192"/'  '/etc/default/grub'
fi


update-grub

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi