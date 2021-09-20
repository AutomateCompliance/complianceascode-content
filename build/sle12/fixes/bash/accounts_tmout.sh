# platform = multi_platform_sle
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_accounts_tmout="(bash-populate var_accounts_tmout)"


if [ -f /etc/profile.d/autologout.sh ]; then
    if grep --silent '^\s*TMOUT' /etc/profile.d/autologout.sh ; then
        sed -i -E "s/^(\s*)TMOUT\s*=\s*(\w|\$)*(.*)$/\1TMOUT=$var_accounts_tmout\3/g" /etc/profile.d/autologout.sh
    fi
else
    echo -e "\n# Set TMOUT to $var_accounts_tmout per security requirements" >> /etc/profile.d/autologout.sh
    echo "TMOUT=$var_accounts_tmout" >> /etc/profile.d/autologout.sh
fi
if ! grep --silent '^\s*readonly TMOUT' /etc/profile.d/autologout.sh ; then
    echo "readonly TMOUT" >> /etc/profile.d/autologout.sh
fi

if ! grep --silent '^\s*export TMOUT' /etc/profile.d/autologout.sh ; then
    echo "export TMOUT" >> /etc/profile.d/autologout.sh
fi
chmod +x /etc/profile.d/autologout.sh

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi