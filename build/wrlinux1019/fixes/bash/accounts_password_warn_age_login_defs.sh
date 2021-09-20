# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if rpm --quiet -q login; then

var_accounts_password_warn_age_login_defs="(bash-populate var_accounts_password_warn_age_login_defs)"


grep -q ^PASS_WARN_AGE /etc/login.defs && \
sed -i "s/PASS_WARN_AGE.*/PASS_WARN_AGE\t$var_accounts_password_warn_age_login_defs/g" /etc/login.defs
if ! [ $? -eq 0 ]
then
  echo -e "PASS_WARN_AGE\t$var_accounts_password_warn_age_login_defs" >> /etc/login.defs
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi