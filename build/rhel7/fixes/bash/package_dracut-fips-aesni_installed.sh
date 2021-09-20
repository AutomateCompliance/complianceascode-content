# platform = Oracle Linux 7,Red Hat Enterprise Linux 7,Red Hat Virtualization 4,Red Hat OpenShift Container Platform 4
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if grep -q -m1 -o aes /proc/cpuinfo; then
    if ! rpm -q --quiet "dracut-fips-aesni" ; then
        yum install -y "dracut-fips-aesni"
    fi
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi