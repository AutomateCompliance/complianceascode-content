# platform = multi_platform_ol,multi_platform_wrlinux,Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8
# Remediation is applicable only in certain platforms
if rpm --quiet -q postfix; then

if ! grep -q ^smtpd_client_restrictions /etc/postfix/main.cf; then
	echo "smtpd_client_restrictions = permit_mynetworks,reject" >> /etc/postfix/main.cf
else
	sed -i "s/^smtpd_client_restrictions.*/smtpd_client_restrictions = permit_mynetworks,reject/g" /etc/postfix/main.cf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi