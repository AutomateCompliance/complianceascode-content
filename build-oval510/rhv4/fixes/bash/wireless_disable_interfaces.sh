# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

nmcli radio wifi off

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi