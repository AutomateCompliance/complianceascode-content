# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'

# Create a list of audit *.rules files that should be inspected for presence and correctness
# of a particular audit rule. The scheme is as follows:
#
# -----------------------------------------------------------------------------------------
# Tool used to load audit rules	| Rule already defined	|  Audit rules file to inspect	  |
# -----------------------------------------------------------------------------------------
#	auditctl		|     Doesn't matter	|  /etc/audit/audit.rules	  |
# -----------------------------------------------------------------------------------------
# 	augenrules		|          Yes		|  /etc/audit/rules.d/*.rules	  |
# 	augenrules		|          No		|  /etc/audit/rules.d/$key.rules  |
# -----------------------------------------------------------------------------------------
files_to_inspect=()


# If the audit tool is 'auditctl', then add '/etc/audit/audit.rules'
# into the list of files to be inspected
files_to_inspect+=('/etc/audit/audit.rules')

# Finally perform the inspection and possible subsequent audit rule
# correction for each of the files previously identified for inspection
for audit_rules_file in "${files_to_inspect[@]}"
do
    # Check if audit watch file system object rule for given path already present
    if grep -q -P -- "[\s]*-w[\s]+/var/log/lastlog" "$audit_rules_file"
    then
        # Rule is found => verify yet if existing rule definition contains
        # all of the required access type bits

        # Define BRE whitespace class shortcut
        sp="[[:space:]]"
        # Extract current permission access types (e.g. -p [r|w|x|a] values) from audit rule
        current_access_bits=$(sed -ne "s#$sp*-w$sp\+/var/log/lastlog $sp\+-p$sp\+\([rxwa]\{1,4\}\).*#\1#p" "$audit_rules_file")
        # Split required access bits string into characters array
        # (to check bit's presence for one bit at a time)
        for access_bit in $(echo "wa" | grep -o .)
        do
            # For each from the required access bits (e.g. 'w', 'a') check
            # if they are already present in current access bits for rule.
            # If not, append that bit at the end
            if ! grep -q "$access_bit" <<< "$current_access_bits"
            then
                # Concatenate the existing mask with the missing bit
                current_access_bits="$current_access_bits$access_bit"
            fi
        done
        # Propagate the updated rule's access bits (original + the required
        # ones) back into the /etc/audit/audit.rules file for that rule
        sed -i "s#\($sp*-w$sp\+/var/log/lastlog$sp\+-p$sp\+\)\([rxwa]\{1,4\}\)\(.*\)#\1$current_access_bits\3#" "$audit_rules_file"
    else
        # Rule isn't present yet. Append it at the end of $audit_rules_file file
        # with proper key

        echo "-w /var/log/lastlog -p wa -k logins" >> "$audit_rules_file"
    fi
done
# Create a list of audit *.rules files that should be inspected for presence and correctness
# of a particular audit rule. The scheme is as follows:
#
# -----------------------------------------------------------------------------------------
# Tool used to load audit rules	| Rule already defined	|  Audit rules file to inspect	  |
# -----------------------------------------------------------------------------------------
#	auditctl		|     Doesn't matter	|  /etc/audit/audit.rules	  |
# -----------------------------------------------------------------------------------------
# 	augenrules		|          Yes		|  /etc/audit/rules.d/*.rules	  |
# 	augenrules		|          No		|  /etc/audit/rules.d/$key.rules  |
# -----------------------------------------------------------------------------------------
files_to_inspect=()

# If the audit is 'augenrules', then check if rule is already defined
# If rule is defined, add '/etc/audit/rules.d/*.rules' to list of files for inspection.
# If rule isn't defined, add '/etc/audit/rules.d/logins.rules' to list of files for inspection.
readarray -t matches < <(grep -HP "[\s]*-w[\s]+/var/log/lastlog" /etc/audit/rules.d/*.rules)

# For each of the matched entries
for match in "${matches[@]}"
do
    # Extract filepath from the match
    rulesd_audit_file=$(echo $match | cut -f1 -d ':')
    # Append that path into list of files for inspection
    files_to_inspect+=("$rulesd_audit_file")
done
# Case when particular audit rule isn't defined yet
if [ "${#files_to_inspect[@]}" -eq "0" ]
then
    # Append '/etc/audit/rules.d/logins.rules' into list of files for inspection
    key_rule_file="/etc/audit/rules.d/logins.rules"
    # If the logins.rules file doesn't exist yet, create it with correct permissions
    if [ ! -e "$key_rule_file" ]
    then
        touch "$key_rule_file"
        chmod 0640 "$key_rule_file"
    fi
    files_to_inspect+=("$key_rule_file")
fi

# Finally perform the inspection and possible subsequent audit rule
# correction for each of the files previously identified for inspection
for audit_rules_file in "${files_to_inspect[@]}"
do
    # Check if audit watch file system object rule for given path already present
    if grep -q -P -- "[\s]*-w[\s]+/var/log/lastlog" "$audit_rules_file"
    then
        # Rule is found => verify yet if existing rule definition contains
        # all of the required access type bits

        # Define BRE whitespace class shortcut
        sp="[[:space:]]"
        # Extract current permission access types (e.g. -p [r|w|x|a] values) from audit rule
        current_access_bits=$(sed -ne "s#$sp*-w$sp\+/var/log/lastlog $sp\+-p$sp\+\([rxwa]\{1,4\}\).*#\1#p" "$audit_rules_file")
        # Split required access bits string into characters array
        # (to check bit's presence for one bit at a time)
        for access_bit in $(echo "wa" | grep -o .)
        do
            # For each from the required access bits (e.g. 'w', 'a') check
            # if they are already present in current access bits for rule.
            # If not, append that bit at the end
            if ! grep -q "$access_bit" <<< "$current_access_bits"
            then
                # Concatenate the existing mask with the missing bit
                current_access_bits="$current_access_bits$access_bit"
            fi
        done
        # Propagate the updated rule's access bits (original + the required
        # ones) back into the /etc/audit/audit.rules file for that rule
        sed -i "s#\($sp*-w$sp\+/var/log/lastlog$sp\+-p$sp\+\)\([rxwa]\{1,4\}\)\(.*\)#\1$current_access_bits\3#" "$audit_rules_file"
    else
        # Rule isn't present yet. Append it at the end of $audit_rules_file file
        # with proper key

        echo "-w /var/log/lastlog -p wa -k logins" >> "$audit_rules_file"
    fi
done