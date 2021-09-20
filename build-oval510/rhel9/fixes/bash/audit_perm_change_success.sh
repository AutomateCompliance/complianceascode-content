# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cat << 'EOF' > /etc/audit/rules.d/30-ospp-v42-5-perm-change-success.rules
## Successful permission change
-a always,exit -F arch=b32 -S chmod,fchmod,fchmodat,setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-perm-change
-a always,exit -F arch=b64 -S chmod,fchmod,fchmodat,setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F success=1 -F auid>=1000 -F auid!=unset -F key=successful-perm-change
EOF

chmod o-rwx /etc/audit/rules.d/30-ospp-v42-5-perm-change-success.rules

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi