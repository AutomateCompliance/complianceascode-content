# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cat << 'EOF' > /etc/audit/rules.d/10-base-config.rules
## First rule - delete all
-D

## Increase the buffers to survive stress events.
## Make this bigger for busy systems
-b 8192

## This determine how long to wait in burst of events
--backlog_wait_time 60000

## Set failure mode to syslog
-f 1
EOF

chmod o-rwx /etc/audit/rules.d/10-base-config.rules

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi