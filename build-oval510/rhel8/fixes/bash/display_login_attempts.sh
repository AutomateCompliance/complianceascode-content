# platform = multi_platform_sle,Red Hat Virtualization 4,multi_platform_fedora,multi_platform_ol,multi_platform_rhel,multi_platform_wrlinux,multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

if [ -e "/etc/pam.d/postlogin" ] ; then
    valueRegex="" defaultValue=""
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"session\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_lastlog.so" < "/etc/pam.d/postlogin" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_lastlog.so)/\\1session\\2/" "/etc/pam.d/postlogin"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*session\\s+(?"'!'"required)[[:alnum:]]+\\s+pam_lastlog.so" < "/etc/pam.d/postlogin" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*session\\s+)[[:alnum:]]+(\\s+pam_lastlog.so)/\\1required\\2/" "/etc/pam.d/postlogin"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*session\\s+required\\s+pam_lastlog.so(\\s.+)?\\s+showfailed(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/postlogin" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*session\\s+required\\s+pam_lastlog.so(\\s.+)?\\s)showfailed=[^[:space:]]*/\\1showfailed${defaultValue}/" "/etc/pam.d/postlogin"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*session\\s+required\\s+pam_lastlog.so" < "/etc/pam.d/postlogin" &&
            grep    -E "^\\s*session\\s+required\\s+pam_lastlog.so" < "/etc/pam.d/postlogin" | grep -q -E -v "\\sshowfailed(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*session\\s+required\\s+pam_lastlog.so[^\\n]*)/\\1 showfailed${defaultValue}/" "/etc/pam.d/postlogin"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*session\\s+required\\s+pam_lastlog.so(\\s.+)?\\s+showfailed${valueRegex}(\\s|\$)" < "/etc/pam.d/postlogin" ; then
        echo "session required pam_lastlog.so showfailed${defaultValue}" >> "/etc/pam.d/postlogin"
    fi
else
    echo "/etc/pam.d/postlogin doesn't exist" >&2
fi

# remove 'silent' option
sed -i --follow-symlinks -E -e 's/^([^#]+pam_lastlog\.so[^#]*)\ssilent/\1/' '/etc/pam.d/postlogin'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi