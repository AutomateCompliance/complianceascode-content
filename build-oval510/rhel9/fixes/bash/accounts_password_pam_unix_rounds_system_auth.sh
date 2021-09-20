# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

var_password_pam_unix_rounds="(bash-populate var_password_pam_unix_rounds)"


pamFile="/etc/pam.d/system-auth"

if grep -q "rounds=" $pamFile; then
    sed -iP --follow-symlinks "/password[[:space:]]\+sufficient[[:space:]]\+pam_unix\.so/ \
                                    s/rounds=[[:digit:]]\+/rounds=$var_password_pam_unix_rounds/" $pamFile
else
    sed -iP --follow-symlinks "/password[[:space:]]\+sufficient[[:space:]]\+pam_unix\.so/ s/$/ rounds=$var_password_pam_unix_rounds/" $pamFile
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi