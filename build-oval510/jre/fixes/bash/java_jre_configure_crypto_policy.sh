# platform = Java Runtime Environment


JRE_CONFIG_FILE="/usr/lib/jvm/jre/lib/security/java.security"
# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "$JRE_CONFIG_FILE"; then
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
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^security.useSystemPropertiesFile")

# shellcheck disable=SC2059
printf -v formatted_output "%s=%s" "$stripped_key" "true"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^security.useSystemPropertiesFile\\>" "$JRE_CONFIG_FILE"; then
    "${sed_command[@]}" "s/^security.useSystemPropertiesFile\\>.*/$formatted_output/gi" "$JRE_CONFIG_FILE"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "$JRE_CONFIG_FILE" >> "$JRE_CONFIG_FILE"
    printf '%s\n' "$formatted_output" >> "$JRE_CONFIG_FILE"
fi