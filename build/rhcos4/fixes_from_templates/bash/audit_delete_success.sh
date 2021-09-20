# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low


cat << 'EOF' > /etc/audit/rules.d/30-ospp-v42-4-delete-success.rules
## Successful file delete
-a always,exit -F arch=b32 -S unlink,unlinkat,rename,renameat -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-delete
-a always,exit -F arch=b64 -S unlink,unlinkat,rename,renameat -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-delete
EOF

chmod o-rwx /etc/audit/rules.d/30-ospp-v42-4-delete-success.rules

augenrules --load