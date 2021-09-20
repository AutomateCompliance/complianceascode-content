# platform = multi_platform_sle,multi_platform_ubuntu
. /usr/share/scap-security-guide/remediation_functions

var_password_pam_tally2="(bash-populate var_password_pam_tally2)"

# Use a non-number regexp to force update of the value of the deny option
if [ -e "/etc/pam.d/common-auth" ] ; then
    valueRegex="°" defaultValue="${var_password_pam_tally2}"
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"auth\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_tally2.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_tally2.so)/\\1auth\\2/" "/etc/pam.d/common-auth"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*auth\\s+(?"'!'"required)[[:alnum:]]+\\s+pam_tally2.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+)[[:alnum:]]+(\\s+pam_tally2.so)/\\1required\\2/" "/etc/pam.d/common-auth"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*auth\\s+required\\s+pam_tally2.so(\\s.+)?\\s+deny(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_tally2.so(\\s.+)?\\s)deny=[^[:space:]]*/\\1deny${defaultValue}/" "/etc/pam.d/common-auth"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*auth\\s+required\\s+pam_tally2.so" < "/etc/pam.d/common-auth" &&
            grep    -E "^\\s*auth\\s+required\\s+pam_tally2.so" < "/etc/pam.d/common-auth" | grep -q -E -v "\\sdeny(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_tally2.so[^\\n]*)/\\1 deny${defaultValue}/" "/etc/pam.d/common-auth"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*auth\\s+required\\s+pam_tally2.so(\\s.+)?\\s+deny${valueRegex}(\\s|\$)" < "/etc/pam.d/common-auth" ; then
        echo "auth required pam_tally2.so deny${defaultValue}" >> "/etc/pam.d/common-auth"
    fi
else
    echo "/etc/pam.d/common-auth doesn't exist" >&2
fi
if [ -e "/etc/pam.d/common-auth" ] ; then
    valueRegex="(fail)" defaultValue="fail"
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"auth\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_tally2.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_tally2.so)/\\1auth\\2/" "/etc/pam.d/common-auth"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*auth\\s+(?"'!'"required)[[:alnum:]]+\\s+pam_tally2.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+)[[:alnum:]]+(\\s+pam_tally2.so)/\\1required\\2/" "/etc/pam.d/common-auth"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*auth\\s+required\\s+pam_tally2.so(\\s.+)?\\s+onerr(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_tally2.so(\\s.+)?\\s)onerr=[^[:space:]]*/\\1onerr${defaultValue}/" "/etc/pam.d/common-auth"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*auth\\s+required\\s+pam_tally2.so" < "/etc/pam.d/common-auth" &&
            grep    -E "^\\s*auth\\s+required\\s+pam_tally2.so" < "/etc/pam.d/common-auth" | grep -q -E -v "\\sonerr(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_tally2.so[^\\n]*)/\\1 onerr${defaultValue}/" "/etc/pam.d/common-auth"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*auth\\s+required\\s+pam_tally2.so(\\s.+)?\\s+onerr${valueRegex}(\\s|\$)" < "/etc/pam.d/common-auth" ; then
        echo "auth required pam_tally2.so onerr${defaultValue}" >> "/etc/pam.d/common-auth"
    fi
else
    echo "/etc/pam.d/common-auth doesn't exist" >&2
fi
if [ -e "/etc/pam.d/common-account" ] ; then
    valueRegex="" defaultValue=""
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"account\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_tally2.so" < "/etc/pam.d/common-account" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_tally2.so)/\\1account\\2/" "/etc/pam.d/common-account"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*account\\s+(?"'!'"required)[[:alnum:]]+\\s+pam_tally2.so" < "/etc/pam.d/common-account" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*account\\s+)[[:alnum:]]+(\\s+pam_tally2.so)/\\1required\\2/" "/etc/pam.d/common-account"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*account\\s+required\\s+pam_tally2.so(\\s.+)?\\s+(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-account" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*account\\s+required\\s+pam_tally2.so(\\s.+)?\\s)=[^[:space:]]*/\\1${defaultValue}/" "/etc/pam.d/common-account"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*account\\s+required\\s+pam_tally2.so" < "/etc/pam.d/common-account" &&
            grep    -E "^\\s*account\\s+required\\s+pam_tally2.so" < "/etc/pam.d/common-account" | grep -q -E -v "\\s(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*account\\s+required\\s+pam_tally2.so[^\\n]*)/\\1 ${defaultValue}/" "/etc/pam.d/common-account"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*account\\s+required\\s+pam_tally2.so(\\s.+)?\\s+${valueRegex}(\\s|\$)" < "/etc/pam.d/common-account" ; then
        echo "account required pam_tally2.so ${defaultValue}" >> "/etc/pam.d/common-account"
    fi
else
    echo "/etc/pam.d/common-account doesn't exist" >&2
fi