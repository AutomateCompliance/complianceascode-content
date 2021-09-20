# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_sle
# Remediation is applicable only in certain platforms
if rpm --quiet -q gdm && { [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; }; then

dconf update

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi