# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_postfix_root_mail_alias="(bash-populate var_postfix_root_mail_alias)"


# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "/etc/aliases"; then
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
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^root")

# shellcheck disable=SC2059
printf -v formatted_output "%s: %s" "$stripped_key" "$var_postfix_root_mail_alias"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^root\\>" "/etc/aliases"; then
    "${sed_command[@]}" "s/^root\\>.*/$formatted_output/gi" "/etc/aliases"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "/etc/aliases" >> "/etc/aliases"
    printf '%s\n' "$formatted_output" >> "/etc/aliases"
fi

newaliases

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi