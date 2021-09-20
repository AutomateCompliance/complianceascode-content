# platform = Red Hat Virtualization 4,multi_platform_fedora,multi_platform_ol,multi_platform_rhel,multi_platform_wrlinux,multi_platform_sle
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! rpm -q --quiet "aide" ; then
    dnf install -y "aide"
fi

if ! grep -q "/usr/sbin/aide --check" /etc/crontab ; then
    echo "05 4 * * * root /usr/sbin/aide --check" >> /etc/crontab
else
    sed -i '\!^.* --check.*$!d' /etc/crontab
    echo "05 4 * * * root /usr/sbin/aide --check" >> /etc/crontab
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi