# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle,multi_platform_ubuntu,multi_platform_sle
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'quota_nld.service'
"$SYSTEMCTL_EXEC" disable 'quota_nld.service'
"$SYSTEMCTL_EXEC" mask 'quota_nld.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^quota_nld.socket'; then
    "$SYSTEMCTL_EXEC" stop 'quota_nld.socket'
    "$SYSTEMCTL_EXEC" mask 'quota_nld.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'quota_nld.service' || true

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi