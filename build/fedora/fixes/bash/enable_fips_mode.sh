# platform = multi_platform_rhel,multi_platform_fedora,Oracle Linux 8,Red Hat Virtualization 4
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

fips-mode-setup --enable

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi