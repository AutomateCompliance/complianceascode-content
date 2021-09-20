# platform = Oracle Linux 7,Red Hat Enterprise Linux 7
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! rpm -q --quiet "dracut-fips" ; then
    yum install -y "dracut-fips"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi