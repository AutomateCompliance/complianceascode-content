# platform = multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if [ ! -f /etc/pam_pkcs11/pam_pkcs11.conf ]; then
    cp /usr/share/doc/libpam-pkcs11/examples/pam_pkcs11.conf.example /etc/pam_pkcs11/pam_pkcs11.conf
fi

if grep -v "^\s*\#+cert_policy" /etc/pam_pkcs11/pam_pkcs11.conf | grep -Eqv 'crl_auto|crl_offline'; then
    sed -i "s/\(^[[:blank:]]*\)\(\(\#*[[:blank:]]*cert_policy[[:blank:]]*=[[:blank:]]*.*;\)[^ $]*\)/\1cert_policy = ca,signature,ocsp_on,crl_auto;/" /etc/pam_pkcs11/pam_pkcs11.conf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi