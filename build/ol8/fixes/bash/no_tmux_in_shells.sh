# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if grep -q 'tmux$' /etc/shells ; then
	sed -i '/tmux$/d' /etc/shells
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi