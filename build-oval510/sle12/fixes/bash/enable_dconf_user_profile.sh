# platform = multi_platform_sle
# Remediation is applicable only in certain platforms
if rpm --quiet -q gdm && { [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; }; then

echo -e 'user-db:user\nsystem-db:gdm' > /etc/dconf/profile/gdm

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi