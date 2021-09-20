# platform = multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if dpkg-query --show --showformat='${db:Status-Status}\n' 'libpam-runtime' 2>/dev/null | grep -q installed; then

. /usr/share/scap-security-guide/remediation_functions
var_password_pam_retry="(bash-populate var_password_pam_retry)"


if [ -e "/etc/pam.d/common-password" ] ; then
    valueRegex="$var_password_pam_retry" defaultValue="$var_password_pam_retry"
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"password\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_pwquality.so" < "/etc/pam.d/common-password" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_pwquality.so)/\\1password\\2/" "/etc/pam.d/common-password"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*password\\s+(?"'!'"requisite)[[:alnum:]]+\\s+pam_pwquality.so" < "/etc/pam.d/common-password" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*password\\s+)[[:alnum:]]+(\\s+pam_pwquality.so)/\\1requisite\\2/" "/etc/pam.d/common-password"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*password\\s+requisite\\s+pam_pwquality.so(\\s.+)?\\s+retry(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-password" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*password\\s+requisite\\s+pam_pwquality.so(\\s.+)?\\s)retry=[^[:space:]]*/\\1retry${defaultValue}/" "/etc/pam.d/common-password"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*password\\s+requisite\\s+pam_pwquality.so" < "/etc/pam.d/common-password" &&
            grep    -E "^\\s*password\\s+requisite\\s+pam_pwquality.so" < "/etc/pam.d/common-password" | grep -q -E -v "\\sretry(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*password\\s+requisite\\s+pam_pwquality.so[^\\n]*)/\\1 retry${defaultValue}/" "/etc/pam.d/common-password"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*password\\s+requisite\\s+pam_pwquality.so(\\s.+)?\\s+retry${valueRegex}(\\s|\$)" < "/etc/pam.d/common-password" ; then
        echo "password requisite pam_pwquality.so retry${defaultValue}" >> "/etc/pam.d/common-password"
    fi
else
    echo "/etc/pam.d/common-password doesn't exist" >&2
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi