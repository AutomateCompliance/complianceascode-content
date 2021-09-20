# platform = Red Hat Virtualization 4,multi_platform_rhel
# Remediation is applicable only in certain platforms
if rpm --quiet -q nss-pam-ldapd; then

# Use LDAP for authentication
# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "/etc/sysconfig/authconfig"; then
    sed_command+=('--follow-symlinks')
fi

# If the cce arg is empty, CCE is not assigned.
if [ -z "@CCENUM@" ]; then
    cce="CCE"
else
    cce="@CCENUM@"
fi

# Strip any search characters in the key arg so that the key can be replaced without
# adding any search characters to the config file.
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^USELDAPAUTH")

# shellcheck disable=SC2059
printf -v formatted_output "%s=%s" "$stripped_key" "yes"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^USELDAPAUTH\\>" "/etc/sysconfig/authconfig"; then
    "${sed_command[@]}" "s/^USELDAPAUTH\\>.*/$formatted_output/gi" "/etc/sysconfig/authconfig"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "/etc/sysconfig/authconfig" >> "/etc/sysconfig/authconfig"
    printf '%s\n' "$formatted_output" >> "/etc/sysconfig/authconfig"
fi

# Configure client to use TLS for all authentications
# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "/etc/nslcd.conf"; then
    sed_command+=('--follow-symlinks')
fi

# If the cce arg is empty, CCE is not assigned.
if [ -z "@CCENUM@" ]; then
    cce="CCE"
else
    cce="@CCENUM@"
fi

# Strip any search characters in the key arg so that the key can be replaced without
# adding any search characters to the config file.
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^ssl")

# shellcheck disable=SC2059
printf -v formatted_output "%s %s" "$stripped_key" "start_tls"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^ssl\\>" "/etc/nslcd.conf"; then
    "${sed_command[@]}" "s/^ssl\\>.*/$formatted_output/gi" "/etc/nslcd.conf"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "/etc/nslcd.conf" >> "/etc/nslcd.conf"
    printf '%s\n' "$formatted_output" >> "/etc/nslcd.conf"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi