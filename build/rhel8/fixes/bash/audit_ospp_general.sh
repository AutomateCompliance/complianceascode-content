# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cat << 'EOF' > /etc/audit/rules.d/30-ospp-v42.rules
## The purpose of these rules is to meet the requirements for Operating
## System Protection Profile (OSPP)v4.2. These rules depends on having
## the following rule files copied to /etc/audit/rules.d:
##
## 10-base-config.rules, 11-loginuid.rules,
## 30-ospp-v42-1-create-failed.rules, 30-ospp-v42-1-create-success.rules,
## 30-ospp-v42-2-modify-failed.rules, 30-ospp-v42-2-modify-success.rules,
## 30-ospp-v42-3-access-failed.rules, 30-ospp-v42-3-access-success.rules,
## 30-ospp-v42-4-delete-failed.rules, 30-ospp-v42-4-delete-success.rules,
## 30-ospp-v42-5-perm-change-failed.rules,
## 30-ospp-v42-5-perm-change-success.rules,
## 30-ospp-v42-6-owner-change-failed.rules,
## 30-ospp-v42-6-owner-change-success.rules
##
## original copies may be found in /usr/share/audit/sample-rules/


## User add delete modify. This is covered by pam. However, someone could
## open a file and directly create or modify a user, so we'll watch passwd and
## shadow for writes
-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&03 -F path=/etc/passwd -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&03 -F path=/etc/passwd -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F arch=b32 -S open -F a1&03 -F path=/etc/passwd -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F arch=b64 -S open -F a1&03 -F path=/etc/passwd -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&03 -F path=/etc/shadow -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&03 -F path=/etc/shadow -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F arch=b32 -S open -F a1&03 -F path=/etc/shadow -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F arch=b64 -S open -F a1&03 -F path=/etc/shadow -F auid>=1000 -F auid!=unset -F key=user-modify

## User enable and disable. This is entirely handled by pam.

## Group add delete modify. This is covered by pam. However, someone could
## open a file and directly create or modify a user, so we'll watch group and
## gshadow for writes
-a always,exit -F path=/etc/passwd -F perm=wa -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F path=/etc/shadow -F perm=wa -F auid>=1000 -F auid!=unset -F key=user-modify
-a always,exit -F path=/etc/group -F perm=wa -F auid>=1000 -F auid!=unset -F key=group-modify
-a always,exit -F path=/etc/gshadow -F perm=wa -F auid>=1000 -F auid!=unset -F key=group-modify


## Use of special rights for config changes. This would be use of setuid
## programs that relate to user accts. This is not all setuid apps because
## requirements are only for ones that affect system configuration.
-a always,exit -F path=/usr/sbin/unix_chkpwd -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/sbin/usernetctl -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/sbin/userhelper -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/sbin/seunshare -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/mount -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/newgrp -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/newuidmap -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/gpasswd -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/newgidmap -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/umount -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/passwd -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/crontab -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes
-a always,exit -F path=/usr/bin/at -F perm=x -F auid>=1000 -F auid!=unset -F key=special-config-changes

## Privilege escalation via su or sudo. This is entirely handled by pam.

## Audit log access
-a always,exit -F dir=/var/log/audit/ -F perm=r -F auid>=1000 -F auid!=unset -F key=access-audit-trail
## Attempts to Alter Process and Session Initiation Information
-a always,exit -F path=/var/run/utmp -F perm=wa -F auid>=1000 -F auid!=unset -F key=session
-a always,exit -F path=/var/log/btmp -F perm=wa -F auid>=1000 -F auid!=unset -F key=session
-a always,exit -F path=/var/log/wtmp -F perm=wa -F auid>=1000 -F auid!=unset -F key=session

## Attempts to modify MAC controls
-a always,exit -F dir=/etc/selinux/ -F perm=wa -F auid>=1000 -F auid!=unset -F key=MAC-policy

## Software updates. This is entirely handled by rpm.

## System start and shutdown. This is entirely handled by systemd

## Kernel Module loading. This is handled in 43-module-load.rules

## Application invocation. The requirements list an optional requirement
## FPT_SRP_EXT.1 Software Restriction Policies. This event is intended to
## state results from that policy. This would be handled entirely by
## that daemon.
EOF

chmod o-rwx /etc/audit/rules.d/30-ospp-v42.rules

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi