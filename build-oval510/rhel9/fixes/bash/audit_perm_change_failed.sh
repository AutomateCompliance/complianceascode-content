# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cat << 'EOF' > /etc/audit/rules.d/30-ospp-v42-5-perm-change-failed.rules
## Unsuccessful permission change
-a always,exit -F arch=b32 -S chmod,fchmod,fchmodat,setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccessful-perm-change
-a always,exit -F arch=b64 -S chmod,fchmod,fchmodat,setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccessful-perm-change
-a always,exit -F arch=b32 -S chmod,fchmod,fchmodat,setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccessful-perm-change
-a always,exit -F arch=b64 -S chmod,fchmod,fchmodat,setxattr,lsetxattr,fsetxattr,removexattr,lremovexattr,fremovexattr -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccessful-perm-change
EOF

chmod o-rwx /etc/audit/rules.d/30-ospp-v42-5-perm-change-failed.rules

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi