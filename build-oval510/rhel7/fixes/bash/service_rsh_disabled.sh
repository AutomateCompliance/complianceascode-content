# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle,multi_platform_ubuntu,multi_platform_sle
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'rsh.service'
"$SYSTEMCTL_EXEC" disable 'rsh.service'
"$SYSTEMCTL_EXEC" mask 'rsh.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^rsh.socket'; then
    "$SYSTEMCTL_EXEC" stop 'rsh.socket'
    "$SYSTEMCTL_EXEC" mask 'rsh.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'rsh.service' || true

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi