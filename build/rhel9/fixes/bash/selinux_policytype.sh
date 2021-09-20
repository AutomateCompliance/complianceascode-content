# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = restrict
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_selinux_policy_name="(bash-populate var_selinux_policy_name)"


if [ -e "/etc/selinux/config" ] ; then
    
    LC_ALL=C sed -i "/^SELINUXTYPE=/Id" "/etc/selinux/config"
else
    touch "/etc/selinux/config"
fi
cp "/etc/selinux/config" "/etc/selinux/config.bak"
# Insert at the end of the file
printf '%s\n' "SELINUXTYPE=$var_selinux_policy_name" >> "/etc/selinux/config"
# Clean up after ourselves.
rm "/etc/selinux/config.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi