# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! LC_ALL=C grep -q -m 1 "^blacklist freevxfs$" /etc/modprobe.d/50-blacklist.conf ; then
        echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/50-blacklist.conf
        echo "blacklist freevxfs" >> /etc/modprobe.d/50-blacklist.conf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi