# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "/etc/chrony.conf"; then
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
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^cmdport")

# shellcheck disable=SC2059
printf -v formatted_output "%s %s" "$stripped_key" "0"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^cmdport\\>" "/etc/chrony.conf"; then
    "${sed_command[@]}" "s/^cmdport\\>.*/$formatted_output/gi" "/etc/chrony.conf"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "/etc/chrony.conf" >> "/etc/chrony.conf"
    printf '%s\n' "$formatted_output" >> "/etc/chrony.conf"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi