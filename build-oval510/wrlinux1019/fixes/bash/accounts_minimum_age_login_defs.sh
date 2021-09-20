# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if rpm --quiet -q login; then

var_accounts_minimum_age_login_defs="(bash-populate var_accounts_minimum_age_login_defs)"


grep -q ^PASS_MIN_DAYS /etc/login.defs && \
  sed -i "s/PASS_MIN_DAYS.*/PASS_MIN_DAYS     $var_accounts_minimum_age_login_defs/g" /etc/login.defs
if ! [ $? -eq 0 ]; then
    echo "PASS_MIN_DAYS      $var_accounts_minimum_age_login_defs" >> /etc/login.defs
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi