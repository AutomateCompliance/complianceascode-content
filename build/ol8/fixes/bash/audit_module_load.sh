# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cat << 'EOF' > /etc/audit/rules.d/43-module-load.rules
## These rules watch for kernel module insertion. By monitoring
## the syscall, we do not need any watches on programs.
-a always,exit -F arch=b32 -S init_module,finit_module -F key=module-load
-a always,exit -F arch=b64 -S init_module,finit_module -F key=module-load
-a always,exit -F arch=b32 -S delete_module -F key=module-unload
-a always,exit -F arch=b64 -S delete_module -F key=module-unload
EOF

chmod o-rwx /etc/audit/rules.d/43-module-load.rules

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi