# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_rhv,multi_platform_ol,multi_platform_sle
# reboot = false
# strategy = configure
# complexity = low
# disruption = medium
# Remediation is applicable only in certain platforms
if rpm --quiet -q sssd-common && { [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; }; then

SSSD_CONF="/etc/sssd/sssd.conf"
SSSD_OPT="pam_cert_auth"
SSSD_OPT_VAL=true
PAM_REGEX="[[:space:]]*\[pam]"
PAM_OPT_REGEX="${PAM_REGEX}([^\n\[]*\n+)+?[[:space:]]*${SSSD_OPT}"

if grep -qzosP $PAM_OPT_REGEX $SSSD_CONF; then
	sed -i "s/${SSSD_OPT}[^(\n)]*/${SSSD_OPT} = ${SSSD_OPT_VAL}/" $SSSD_CONF
elif grep -qs $PAM_REGEX $SSSD_CONF; then
	sed -i "/$PAM_REGEX/a ${SSSD_OPT} = ${SSSD_OPT_VAL}" $SSSD_CONF
else
	mkdir -p /etc/sssd
	touch $SSSD_CONF
	echo -e "[pam]\n${SSSD_OPT} = ${SSSD_OPT_VAL}" >> $SSSD_CONF
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi