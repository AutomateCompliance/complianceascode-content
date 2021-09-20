# platform = multi_platform_sle,multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Enable apparmor
/usr/bin/systemctl enable "apparmor"
/usr/bin/systemctl start "apparmor"
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
/usr/bin/systemctl reset-failed "apparmor"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi