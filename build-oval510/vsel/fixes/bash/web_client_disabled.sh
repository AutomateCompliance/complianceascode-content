# platform = McAfee VirusScan Enterprise for Linux


NAILS_CONFIG_FILE="/var/opt/NAI/LinuxShield/etc/nailsd.cfg"
# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "$NAILS_CONFIG_FILE"; then
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
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^nailsd.disableCltWebUI")

# shellcheck disable=SC2059
printf -v formatted_output "%s: %s" "$stripped_key" "true"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^nailsd.disableCltWebUI\\>" "$NAILS_CONFIG_FILE"; then
    "${sed_command[@]}" "s/^nailsd.disableCltWebUI\\>.*/$formatted_output/gi" "$NAILS_CONFIG_FILE"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "$NAILS_CONFIG_FILE" >> "$NAILS_CONFIG_FILE"
    printf '%s\n' "$formatted_output" >> "$NAILS_CONFIG_FILE"
fi