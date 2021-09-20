# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if test -f /etc/ssh/sshd_config.d/sshd_config_original.conf; then
	printf '%s\n' "Remediation probably already happened, '/etc/ssh/sshd_config.d/sshd_config_original.conf' already exists, not doing anything." >&2
false 1
elif grep -Eq '^\s*Include\s+/etc/ssh/sshd_config\.d/\*\.conf' /etc/ssh/sshd_config && ! grep -Eq '^\s*Match\s' /etc/ssh/sshd_config; then
	printf '%s\n' "Remediation probably already happened, '/etc/ssh/sshd_config' already contains the include directive." >&2
false 1
else
	mkdir -p /etc/ssh/sshd_config.d
	mv /etc/ssh/sshd_config /etc/ssh/sshd_config.d/sshd_config_original.conf
cat > /etc/ssh/sshd_config << EOF
# To modify the system-wide sshd configuration, create a  *.conf  file under
#  /etc/ssh/sshd_config.d/  which will be automatically included below

Include /etc/ssh/sshd_config.d/*.conf
EOF
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi