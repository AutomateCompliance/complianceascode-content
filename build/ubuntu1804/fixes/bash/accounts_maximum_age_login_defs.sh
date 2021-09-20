# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_ol,multi_platform_rhv,multi_platform_fedora,multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if dpkg-query --show --showformat='${db:Status-Status}\n' 'login' 2>/dev/null | grep -q installed; then

var_accounts_maximum_age_login_defs="(bash-populate var_accounts_maximum_age_login_defs)"


grep -q ^PASS_MAX_DAYS /etc/login.defs && \
  sed -i "s/PASS_MAX_DAYS.*/PASS_MAX_DAYS     $var_accounts_maximum_age_login_defs/g" /etc/login.defs
if ! [ $? -eq 0 ]; then
    echo "PASS_MAX_DAYS      $var_accounts_maximum_age_login_defs" >> /etc/login.defs
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi