# platform = Red Hat Enterprise Linux 7,multi_platform_fedora,Oracle Linux 7
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

PKCSSW=$(/usr/bin/pkcs11-switch)

if [ ${PKCSSW} != "opensc" ] ; then
    ${PKCSSW} opensc
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi