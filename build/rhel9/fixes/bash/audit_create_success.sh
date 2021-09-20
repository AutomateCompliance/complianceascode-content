# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cat << 'EOF' > /etc/audit/rules.d/30-ospp-v42-1-create-success.rules
## Successful file creation (open with O_CREAT)
-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&0100 -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-create
-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&0100 -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-create
-a always,exit -F arch=b32 -S open -F a1&0100 -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-create
-a always,exit -F arch=b64 -S open -F a1&0100 -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-create
-a always,exit -F arch=b32 -S creat -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-create
-a always,exit -F arch=b64 -S creat -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-create
EOF

chmod o-rwx /etc/audit/rules.d/30-ospp-v42-1-create-success.rules

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi