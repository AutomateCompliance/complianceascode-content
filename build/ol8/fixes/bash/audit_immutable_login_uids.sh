# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cat << 'EOF' > /etc/audit/rules.d/11-loginuid.rules
## Make the loginuid immutable. This prevents tampering with the auid.
--loginuid-immutable
EOF

chmod o-rwx /etc/audit/rules.d/11-loginuid.rules

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi