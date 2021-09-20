# platform = multi_platform_ubuntu

var_password_pam_delay="(bash-populate var_password_pam_delay)"


if [ -e "/etc/pam.d/common-auth" ] ; then
    valueRegex="$var_password_pam_delay" defaultValue="$var_password_pam_delay"
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"auth\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_faildelay.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_faildelay.so)/\\1auth\\2/" "/etc/pam.d/common-auth"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*auth\\s+(?"'!'"required)[[:alnum:]]+\\s+pam_faildelay.so" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+)[[:alnum:]]+(\\s+pam_faildelay.so)/\\1required\\2/" "/etc/pam.d/common-auth"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*auth\\s+required\\s+pam_faildelay.so(\\s.+)?\\s+delay(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-auth" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_faildelay.so(\\s.+)?\\s)delay=[^[:space:]]*/\\1delay${defaultValue}/" "/etc/pam.d/common-auth"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*auth\\s+required\\s+pam_faildelay.so" < "/etc/pam.d/common-auth" &&
            grep    -E "^\\s*auth\\s+required\\s+pam_faildelay.so" < "/etc/pam.d/common-auth" | grep -q -E -v "\\sdelay(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*auth\\s+required\\s+pam_faildelay.so[^\\n]*)/\\1 delay${defaultValue}/" "/etc/pam.d/common-auth"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*auth\\s+required\\s+pam_faildelay.so(\\s.+)?\\s+delay${valueRegex}(\\s|\$)" < "/etc/pam.d/common-auth" ; then
        echo "auth required pam_faildelay.so delay${defaultValue}" >> "/etc/pam.d/common-auth"
    fi
else
    echo "/etc/pam.d/common-auth doesn't exist" >&2
fi