# platform = multi_platform_sle
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

if [ -e "/etc/pam.d/common-auth" ] ; then
    valueRegex="" defaultValue=""
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"auth\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_unix.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_unix.so)/\\1auth\\2/" "/etc/pam.d/common-auth"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*auth\\s+(?"'!'"required)[[:alnum:]]+\\s+pam_unix.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+)[[:alnum:]]+(\\s+pam_unix.so)/\\1required\\2/" "/etc/pam.d/common-auth"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*auth\\s+required\\s+pam_unix.so(\\s.+)?\\s+sha512(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_unix.so(\\s.+)?\\s)sha512=[^[:space:]]*/\\1sha512${defaultValue}/" "/etc/pam.d/common-auth"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*auth\\s+required\\s+pam_unix.so" < "/etc/pam.d/common-auth" &&
            grep    -E "^\\s*auth\\s+required\\s+pam_unix.so" < "/etc/pam.d/common-auth" | grep -q -E -v "\\ssha512(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_unix.so[^\\n]*)/\\1 sha512${defaultValue}/" "/etc/pam.d/common-auth"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*auth\\s+required\\s+pam_unix.so(\\s.+)?\\s+sha512${valueRegex}(\\s|\$)" < "/etc/pam.d/common-auth" ; then
        echo "auth required pam_unix.so sha512${defaultValue}" >> "/etc/pam.d/common-auth"
    fi
else
    echo "/etc/pam.d/common-auth doesn't exist" >&2
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi