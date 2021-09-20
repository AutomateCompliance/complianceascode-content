# platform = multi_platform_ubuntu,multi_platform_sle
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if timedatectl status | grep -i "time zone" | grep -iv 'UTC\|GMT'; then
    timedatectl set-timezone UTC
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi