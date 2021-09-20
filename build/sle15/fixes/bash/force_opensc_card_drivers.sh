# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_rhv,multi_platform_ol,multi_platform_sle
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_smartcard_drivers="(bash-populate var_smartcard_drivers)"


OPENSC_TOOL="/usr/bin/opensc-tool"

if [ -f "${OPENSC_TOOL}" ]; then
    ${OPENSC_TOOL} -S app:default:force_card_driver:$var_smartcard_drivers
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi