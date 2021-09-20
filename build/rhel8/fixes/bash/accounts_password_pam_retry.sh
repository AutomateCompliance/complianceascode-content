# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

var_password_pam_retry="(bash-populate var_password_pam_retry)"


if grep -q "retry=" /etc/pam.d/system-auth ; then
	sed -i --follow-symlinks "s/\(retry *= *\).*/\1$var_password_pam_retry/" /etc/pam.d/system-auth
else
	sed -i --follow-symlinks "/pam_pwquality.so/ s/$/ retry=$var_password_pam_retry/" /etc/pam.d/system-auth
fi

if grep -q "retry=" /etc/pam.d/password-auth ; then
	sed -i --follow-symlinks "s/\(retry *= *\).*/\1$var_password_pam_retry/" /etc/pam.d/password-auth
else
	sed -i --follow-symlinks "/pam_pwquality.so/ s/$/ retry=$var_password_pam_retry/" /etc/pam.d/password-auth
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi