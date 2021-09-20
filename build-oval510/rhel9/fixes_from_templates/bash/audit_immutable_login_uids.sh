# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low


cat << 'EOF' > /etc/audit/rules.d/11-loginuid.rules
## Make the loginuid immutable. This prevents tampering with the auid.
--loginuid-immutable
EOF

chmod o-rwx /etc/audit/rules.d/11-loginuid.rules

augenrules --load