# platform = multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if dpkg-query --show --showformat='${db:Status-Status}\n' 'libpam-runtime' 2>/dev/null | grep -q installed; then

. /usr/share/scap-security-guide/remediation_functions
var_password_pam_unix_remember="(bash-populate var_password_pam_unix_remember)"


if [ -e "/etc/pam.d/common-password" ] ; then
    valueRegex="$var_password_pam_unix_remember" defaultValue="$var_password_pam_unix_remember"
    # non-empty values need to be preceded by an equals sign
    [ -n "${valueRegex}" ] && valueRegex="=${valueRegex}"
    # add an equals sign to non-empty values
    [ -n "${defaultValue}" ] && defaultValue="=${defaultValue}"

    # fix 'type' if it's wrong
    if grep -q -P "^\\s*(?"'!'"password\\s)[[:alnum:]]+\\s+[[:alnum:]]+\\s+pam_unix.so" < "/etc/pam.d/common-password" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*)[[:alnum:]]+(\\s+[[:alnum:]]+\\s+pam_unix.so)/\\1password\\2/" "/etc/pam.d/common-password"
    fi

    # fix 'control' if it's wrong
    if grep -q -P "^\\s*password\\s+(?"'!'"[success=1 default=ignore])[[:alnum:]]+\\s+pam_unix.so" < "/etc/pam.d/common-password" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*password\\s+)[[:alnum:]]+(\\s+pam_unix.so)/\\1[success=1 default=ignore]\\2/" "/etc/pam.d/common-password"
    fi

    # fix the value for 'option' if one exists but does not match 'valueRegex'
    if grep -q -P "^\\s*password\\s+[success=1 default=ignore]\\s+pam_unix.so(\\s.+)?\\s+obsecure sha512 shadow remember(?"'!'"${valueRegex}(\\s|\$))" < "/etc/pam.d/common-password" ; then
        sed --follow-symlinks -i -E -e "s/^(\\s*password\\s+[success=1 default=ignore]\\s+pam_unix.so(\\s.+)?\\s)obsecure sha512 shadow remember=[^[:space:]]*/\\1obsecure sha512 shadow remember${defaultValue}/" "/etc/pam.d/common-password"

    # add 'option=default' if option is not set
    elif grep -q -E "^\\s*password\\s+[success=1 default=ignore]\\s+pam_unix.so" < "/etc/pam.d/common-password" &&
            grep    -E "^\\s*password\\s+[success=1 default=ignore]\\s+pam_unix.so" < "/etc/pam.d/common-password" | grep -q -E -v "\\sobsecure sha512 shadow remember(=|\\s|\$)" ; then

        sed --follow-symlinks -i -E -e "s/^(\\s*password\\s+[success=1 default=ignore]\\s+pam_unix.so[^\\n]*)/\\1 obsecure sha512 shadow remember${defaultValue}/" "/etc/pam.d/common-password"
    # add a new entry if none exists
    elif ! grep -q -P "^\\s*password\\s+[success=1 default=ignore]\\s+pam_unix.so(\\s.+)?\\s+obsecure sha512 shadow remember${valueRegex}(\\s|\$)" < "/etc/pam.d/common-password" ; then
        echo "password [success=1 default=ignore] pam_unix.so obsecure sha512 shadow remember${defaultValue}" >> "/etc/pam.d/common-password"
    fi
else
    echo "/etc/pam.d/common-password doesn't exist" >&2
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi