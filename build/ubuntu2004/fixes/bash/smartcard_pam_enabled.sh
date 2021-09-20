# platform = multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if [ -e "/etc/pam.d/common-auth" ] ; then
    valueRegex="" defaultValue=""
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"auth\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_pkcs11.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_pkcs11.so)/\\1auth\\2/" "/etc/pam.d/common-auth"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*auth\\s+(?"'!'"[success=2 default=ignore])[[:alnum:]]+\\s+pam_pkcs11.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+)[[:alnum:]]+(\\s+pam_pkcs11.so)/\\1[success=2 default=ignore]\\2/" "/etc/pam.d/common-auth"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*auth\\s+[success=2 default=ignore]\\s+pam_pkcs11.so(\\s.+)?\\s+(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+[success=2 default=ignore]\\s+pam_pkcs11.so(\\s.+)?\\s)=[^[:space:]]*/\\1${defaultValue}/" "/etc/pam.d/common-auth"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*auth\\s+[success=2 default=ignore]\\s+pam_pkcs11.so" < "/etc/pam.d/common-auth" &&
            grep    -E "^\\s*auth\\s+[success=2 default=ignore]\\s+pam_pkcs11.so" < "/etc/pam.d/common-auth" | grep -q -E -v "\\s(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+[success=2 default=ignore]\\s+pam_pkcs11.so[^\\n]*)/\\1 ${defaultValue}/" "/etc/pam.d/common-auth"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*auth\\s+[success=2 default=ignore]\\s+pam_pkcs11.so(\\s.+)?\\s+${valueRegex}(\\s|\$)" < "/etc/pam.d/common-auth" ; then
        echo "auth [success=2 default=ignore] pam_pkcs11.so ${defaultValue}" >> "/etc/pam.d/common-auth"
    fi
else
    echo "/etc/pam.d/common-auth doesn't exist" >&2
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi