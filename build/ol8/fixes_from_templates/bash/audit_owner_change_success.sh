# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low


cat << 'EOF' > /etc/audit/rules.d/30-ospp-v42-6-owner-change-success.rules
## Successful ownership change
-a always,exit -F arch=b32 -S lchown,fchown,chown,fchownat -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-owner-change
-a always,exit -F arch=b64 -S lchown,fchown,chown,fchownat -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-owner-change
EOF

chmod o-rwx /etc/audit/rules.d/30-ospp-v42-6-owner-change-success.rules

augenrules --load