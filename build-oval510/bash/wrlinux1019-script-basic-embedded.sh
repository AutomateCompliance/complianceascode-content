###############################################################################
#
# Bash remediation role for profile basic-embedded
# Profile Title:  Basic Profile for Embedded Systems
# Profile Description:
# This profile contains items common to many embedded Linux installations.
# Regardless of your system's deployment objective, all of these checks should pass.
#
# Benchmark ID:  WRLINUX
# Benchmark Version:  0.1.58
#
# XCCDF Version:  1.1
#
# This file was generated by OpenSCAP 1.2.16 using:
# 	$ oscap xccdf generate fix --profile basic-embedded --template urn:xccdf:fix:script:sh sds.xml 
#
# This script is generated from an OpenSCAP profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this remediation role:
# $ sudo ./remediation-role.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 11) for 'accounts_password_all_shadowed'
###############################################################################
(>&2 echo "Remediating rule 1/11: 'accounts_password_all_shadowed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'accounts_password_all_shadowed'

###############################################################################
# BEGIN fix (2 / 11) for 'no_empty_passwords'
###############################################################################
(>&2 echo "Remediating rule 2/11: 'no_empty_passwords'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

sed --follow-symlinks -i 's/\<nullok\>//g' /etc/pam.d/system-auth
sed --follow-symlinks -i 's/\<nullok\>//g' /etc/pam.d/password-auth

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'no_empty_passwords'

###############################################################################
# BEGIN fix (3 / 11) for 'no_netrc_files'
###############################################################################
(>&2 echo "Remediating rule 3/11: 'no_netrc_files'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'no_netrc_files'

###############################################################################
# BEGIN fix (4 / 11) for 'accounts_no_uid_except_zero'
###############################################################################
(>&2 echo "Remediating rule 4/11: 'accounts_no_uid_except_zero'")
awk -F: '$3 == 0 && $1 != "root" { print $1 }' /etc/passwd | xargs --max-lines=1 passwd -l
# END fix for 'accounts_no_uid_except_zero'

###############################################################################
# BEGIN fix (5 / 11) for 'accounts_logon_fail_delay'
###############################################################################
(>&2 echo "Remediating rule 5/11: 'accounts_logon_fail_delay'")
# Remediation is applicable only in certain platforms
if rpm --quiet -q login; then

var_accounts_fail_delay="4"


# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "/etc/login.defs"; then
    sed_command+=('--follow-symlinks')
fi

# If the cce arg is empty, CCE is not assigned.
if [ -z "" ]; then
    cce="CCE"
else
    cce=""
fi

# Strip any search characters in the key arg so that the key can be replaced without
# adding any search characters to the config file.
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^FAIL_DELAY")

# shellcheck disable=SC2059
printf -v formatted_output "%s %s" "$stripped_key" "$var_accounts_fail_delay"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^FAIL_DELAY\\>" "/etc/login.defs"; then
    "${sed_command[@]}" "s/^FAIL_DELAY\\>.*/$formatted_output/gi" "/etc/login.defs"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "/etc/login.defs" >> "/etc/login.defs"
    printf '%s\n' "$formatted_output" >> "/etc/login.defs"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'accounts_logon_fail_delay'

###############################################################################
# BEGIN fix (6 / 11) for 'accounts_max_concurrent_login_sessions'
###############################################################################
(>&2 echo "Remediating rule 6/11: 'accounts_max_concurrent_login_sessions'")
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

var_accounts_max_concurrent_login_sessions="1"


if grep -q '^[^#]*\<maxlogins\>' /etc/security/limits.d/*.conf; then
	sed -i "/^[^#]*\<maxlogins\>/ s/maxlogins.*/maxlogins $var_accounts_max_concurrent_login_sessions/" /etc/security/limits.d/*.conf
elif grep -q '^[^#]*\<maxlogins\>' /etc/security/limits.conf; then
	sed -i "/^[^#]*\<maxlogins\>/ s/maxlogins.*/maxlogins $var_accounts_max_concurrent_login_sessions/" /etc/security/limits.conf
else
	echo "*	hard	maxlogins	$var_accounts_max_concurrent_login_sessions" >> /etc/security/limits.conf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'accounts_max_concurrent_login_sessions'

###############################################################################
# BEGIN fix (7 / 11) for 'file_permissions_home_dirs'
###############################################################################
(>&2 echo "Remediating rule 7/11: 'file_permissions_home_dirs'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'file_permissions_home_dirs'

###############################################################################
# BEGIN fix (8 / 11) for 'accounts_root_path_dirs_no_write'
###############################################################################
(>&2 echo "Remediating rule 8/11: 'accounts_root_path_dirs_no_write'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'accounts_root_path_dirs_no_write'

###############################################################################
# BEGIN fix (9 / 11) for 'root_path_no_dot'
###############################################################################
(>&2 echo "Remediating rule 9/11: 'root_path_no_dot'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'root_path_no_dot'

###############################################################################
# BEGIN fix (10 / 11) for 'accounts_umask_etc_login_defs'
###############################################################################
(>&2 echo "Remediating rule 10/11: 'accounts_umask_etc_login_defs'")
# Remediation is applicable only in certain platforms
if rpm --quiet -q login; then

var_accounts_user_umask="077"


# Test if the config_file is a symbolic link. If so, use --follow-symlinks with sed.
# Otherwise, regular sed command will do.
sed_command=('sed' '-i')
if test -L "/etc/login.defs"; then
    sed_command+=('--follow-symlinks')
fi

# If the cce arg is empty, CCE is not assigned.
if [ -z "" ]; then
    cce="CCE"
else
    cce=""
fi

# Strip any search characters in the key arg so that the key can be replaced without
# adding any search characters to the config file.
stripped_key=$(sed 's/[\^=\$,;+]*//g' <<< "^UMASK")

# shellcheck disable=SC2059
printf -v formatted_output "%s %s" "$stripped_key" "$var_accounts_user_umask"

# If the key exists, change it. Otherwise, add it to the config_file.
# We search for the key string followed by a word boundary (matched by \>),
# so if we search for 'setting', 'setting2' won't match.
if LC_ALL=C grep -q -m 1 -i -e "^UMASK\\>" "/etc/login.defs"; then
    "${sed_command[@]}" "s/^UMASK\\>.*/$formatted_output/gi" "/etc/login.defs"
else
    # \n is precaution for case where file ends without trailing newline
    printf '\n# Per %s: Set %s in %s\n' "$cce" "$formatted_output" "/etc/login.defs" >> "/etc/login.defs"
    printf '%s\n' "$formatted_output" >> "/etc/login.defs"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'accounts_umask_etc_login_defs'

###############################################################################
# BEGIN fix (11 / 11) for 'accounts_umask_etc_profile'
###############################################################################
(>&2 echo "Remediating rule 11/11: 'accounts_umask_etc_profile'")

var_accounts_user_umask="077"


grep -q umask /etc/profile && \
  sed -i "s/umask.*/umask $var_accounts_user_umask/g" /etc/profile
if ! [ $? -eq 0 ]; then
    echo "umask $var_accounts_user_umask" >> /etc/profile
fi
# END fix for 'accounts_umask_etc_profile'

