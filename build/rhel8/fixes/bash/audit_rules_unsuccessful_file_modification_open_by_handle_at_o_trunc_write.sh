# platform = Red Hat Virtualization 4,multi_platform_ol,multi_platform_rhel,multi_platform_wrlinux
# Remediation is applicable only in certain platforms
if rpm --quiet -q audit; then

mkdir -p "$(dirname '/etc/audit/rules.d/30-ospp-v42-remediation.rules')"
cat <<EOF > "/etc/audit/rules.d/30-ospp-v42-remediation.rules"
## This content is a section of an Audit config snapshot recommended for linux systems that target OSPP compliance.
## The following content has been retreived on 2019-03-11 from: https://github.com/linux-audit/audit-userspace/blob/master/rules/30-ospp-v42.rules

## The purpose of these rules is to meet the requirements for Operating
## System Protection Profile (OSPP)v4.2. These rules depends on having
## 10-base-config.rules, 11-loginuid.rules, and 43-module-load.rules installed.

## Unsuccessful file creation (open with O_CREAT)
-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b32 -S open -F a1&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b64 -S open -F a1&0100 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b32 -S open -F a1&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b64 -S open -F a1&0100 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b32 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b64 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b32 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create
-a always,exit -F arch=b64 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-create

## Unsuccessful file modifications (open for write or truncate)
-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b32 -S open -F a1&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b64 -S open -F a1&01003 -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b32 -S openat,open_by_handle_at -F a2&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b64 -S openat,open_by_handle_at -F a2&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b32 -S open -F a1&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b64 -S open -F a1&01003 -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b32 -S truncate,ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b64 -S truncate,ftruncate -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b32 -S truncate,ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification
-a always,exit -F arch=b64 -S truncate,ftruncate -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-modification

## Unsuccessful file access (any other opens) This has to go last.
-a always,exit -F arch=b32 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
-a always,exit -F arch=b64 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EACCES -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
-a always,exit -F arch=b32 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
-a always,exit -F arch=b64 -S open,creat,truncate,ftruncate,openat,open_by_handle_at -F exit=-EPERM -F auid>=1000 -F auid!=unset -F key=unsuccesful-access
EOF

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi