# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle
# Remediation is applicable only in certain platforms
if rpm --quiet -q audit; then

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
files_to_inspect=()

# If the audit tool is 'auditctl', then:
# * add '/etc/audit/audit.rules'to the list of files to be inspected,
# * specify '/etc/audit/audit.rules' as the output audit file, where
#   missing rules should be inserted
files_to_inspect=("/etc/audit/audit.rules")
output_audit_file="/etc/audit/audit.rules"

# Obtain the list of SUID/SGID binaries on the particular system (split by newline)
# into privileged_binaries array
privileged_binaries=()
readarray -t privileged_binaries < <(find / -not \( -fstype afs -o -fstype ceph -o -fstype cifs -o -fstype smb3 -o -fstype smbfs -o -fstype sshfs -o -fstype ncpfs -o -fstype ncp -o -fstype nfs -o -fstype nfs4 -o -fstype gfs -o -fstype gfs2 -o -fstype glusterfs -o -fstype gpfs -o -fstype pvfs2 -o -fstype ocfs2 -o -fstype lustre -o -fstype davfs -o -fstype fuse.sshfs \) -type f \( -perm -4000 -o -perm -2000 \) 2> /dev/null)

# Keep list of SUID/SGID binaries that have been already handled within some previous iteration
sbinaries_to_skip=()

# For each found sbinary in privileged_binaries list
for sbinary in "${privileged_binaries[@]}"
do

    # Check if this sbinary wasn't already handled in some of the previous sbinary iterations
    # Return match only if whole sbinary definition matched (not in the case just prefix matched!!!)
    if [[ $(sed -ne "\|${sbinary}|p" <<< "${sbinaries_to_skip[*]}") ]]
    then
        # If so, don't process it second time & go to process next sbinary
        continue
    fi

    # Reset the counter of inspected files when starting to check
    # presence of existing audit rule for new sbinary
    count_of_inspected_files=0

    # Define expected rule form for this binary
    expected_rule="-a always,exit -F path=${sbinary} -F auid>=1000 -F auid!=unset -F key=privileged"

    # If list of audit rules files to be inspected is empty, just add new rule and move on to next binary
    if [[ ${#files_to_inspect[@]} -eq 0 ]]; then
        echo "$expected_rule" >> "$output_audit_file"
        continue
    fi

    # Replace possible slash '/' character in sbinary definition so we could use it in sed expressions below
    sbinary_esc=${sbinary//$'/'/$'\/'}

    # For each audit rules file from the list of files to be inspected
    for afile in "${files_to_inspect[@]}"
    do
        # Search current audit rules file's content for match. Match criteria:
        # * existing rule is for the same SUID/SGID binary we are currently processing (but
        #   can contain multiple -F path= elements covering multiple SUID/SGID binaries)
        # * existing rule contains all arguments from expected rule form (though can contain
        #   them in arbitrary order)

        base_search=$(sed -e '/-a always,exit/!d' -e '/-F path='"${sbinary_esc}"'[^[:graph:]]/!d'		\
                -e '/-F path=[^[:space:]]\+/!d'						\
                -e '/-F auid>='"1000"'/!d' -e '/-F auid!=\(4294967295\|unset\)/!d'	\
                -e '/-k \|-F key=/!d' "$afile")

        # Increase the count of inspected files for this sbinary
        count_of_inspected_files=$((count_of_inspected_files + 1))

        # Search current audit rules file's content for presence of rule pattern for this sbinary
        if [[ $base_search ]]
        then

            # Current audit rules file already contains rule for this binary =>
            # Store the exact form of found rule for this binary for further processing
            concrete_rule=$base_search

            # Select all other SUID/SGID binaries possibly also present in the found rule

            readarray -t handled_sbinaries < <(grep -o -e "-F path=[^[:space:]]\+" <<< "$concrete_rule")
            handled_sbinaries=("${handled_sbinaries[@]//-F path=/}")

            # Merge the list of such SUID/SGID binaries found in this iteration with global list ignoring duplicates
            readarray -t sbinaries_to_skip < <(for i in "${sbinaries_to_skip[@]}" "${handled_sbinaries[@]}"; do echo "$i"; done | sort -du)

            # if there is a -F perm flag, remove it
            if grep -q '.*-F\s\+perm=[rwxa]\+.*' <<< "$concrete_rule"; then

                # Separate concrete_rule into three sections using hash '#'
                # sign as a delimiter around rule's permission section borders
                # note that the trailing space after perm flag is captured because there would be 
                # two consecutive spaces after joining remaining parts of the rule together
                concrete_rule="$(echo "$concrete_rule" | sed -n "s/\(.*\)\+\(-F perm=[rwax]\+\ \?\)\+/\1#\2#/p")"

                # Split concrete_rule into head, perm, and tail sections using hash '#' delimiter
                rule_head=$(cut -d '#' -f 1 <<< "$concrete_rule")
                rule_perm=$(cut -d '#' -f 2 <<< "$concrete_rule")
                rule_tail=$(cut -d '#' -f 3 <<< "$concrete_rule")

                # Remove permissions section from existing rule in the file
                sed -i "s#${rule_head}\(.*\)${rule_tail}#${rule_head}${rule_tail}#" "$afile"
            fi
        # If the required audit rule for particular sbinary wasn't found yet, insert it under following conditions:
        #
        # * in the "auditctl" mode of operation insert particular rule each time
        #   (because in this mode there's only one file -- /etc/audit/audit.rules to be inspected for presence of this rule),
        #
        # * in the "augenrules" mode of operation insert particular rule only once and only in case we have already
        #   searched all of the files from /etc/audit/rules.d/*.rules location (since that audit rule can be defined
        #   in any of those files and if not, we want it to be inserted only once into /etc/audit/rules.d/privileged.rules file)
        #
        elif [ "auditctl" == "auditctl" ] || [[ "auditctl" == "augenrules" && $count_of_inspected_files -eq "${#files_to_inspect[@]}" ]]
        then
            # Check if this sbinary wasn't already handled in some of the previous afile iterations
            # Return match only if whole sbinary definition matched (not in the case just prefix matched!!!)
            if [[ ! $(sed -ne "\|${sbinary}|p" <<< "${sbinaries_to_skip[*]}") ]]
            then
                # Current audit rules file's content doesn't contain expected rule for this
                # SUID/SGID binary yet => append it
                echo "$expected_rule" >> "$output_audit_file"
            fi
            continue
        fi
    done
done
files_to_inspect=()
# If the audit tool is 'augenrules', then:
# * add '/etc/audit/rules.d/*.rules' to the list of files to be inspected
#   (split by newline),
# * specify /etc/audit/rules.d/privileged.rules' as the output file, where
#   missing rules should be inserted
readarray -t files_to_inspect < <(find /etc/audit/rules.d -maxdepth 1 -type f -name '*.rules' -print)
output_audit_file="/etc/audit/rules.d/privileged.rules"

# Obtain the list of SUID/SGID binaries on the particular system (split by newline)
# into privileged_binaries array
privileged_binaries=()
readarray -t privileged_binaries < <(find / -not \( -fstype afs -o -fstype ceph -o -fstype cifs -o -fstype smb3 -o -fstype smbfs -o -fstype sshfs -o -fstype ncpfs -o -fstype ncp -o -fstype nfs -o -fstype nfs4 -o -fstype gfs -o -fstype gfs2 -o -fstype glusterfs -o -fstype gpfs -o -fstype pvfs2 -o -fstype ocfs2 -o -fstype lustre -o -fstype davfs -o -fstype fuse.sshfs \) -type f \( -perm -4000 -o -perm -2000 \) 2> /dev/null)

# Keep list of SUID/SGID binaries that have been already handled within some previous iteration
sbinaries_to_skip=()

# For each found sbinary in privileged_binaries list
for sbinary in "${privileged_binaries[@]}"
do

    # Check if this sbinary wasn't already handled in some of the previous sbinary iterations
    # Return match only if whole sbinary definition matched (not in the case just prefix matched!!!)
    if [[ $(sed -ne "\|${sbinary}|p" <<< "${sbinaries_to_skip[*]}") ]]
    then
        # If so, don't process it second time & go to process next sbinary
        continue
    fi

    # Reset the counter of inspected files when starting to check
    # presence of existing audit rule for new sbinary
    count_of_inspected_files=0

    # Define expected rule form for this binary
    expected_rule="-a always,exit -F path=${sbinary} -F auid>=1000 -F auid!=unset -F key=privileged"

    # If list of audit rules files to be inspected is empty, just add new rule and move on to next binary
    if [[ ${#files_to_inspect[@]} -eq 0 ]]; then
        echo "$expected_rule" >> "$output_audit_file"
        continue
    fi

    # Replace possible slash '/' character in sbinary definition so we could use it in sed expressions below
    sbinary_esc=${sbinary//$'/'/$'\/'}

    # For each audit rules file from the list of files to be inspected
    for afile in "${files_to_inspect[@]}"
    do
        # Search current audit rules file's content for match. Match criteria:
        # * existing rule is for the same SUID/SGID binary we are currently processing (but
        #   can contain multiple -F path= elements covering multiple SUID/SGID binaries)
        # * existing rule contains all arguments from expected rule form (though can contain
        #   them in arbitrary order)

        base_search=$(sed -e '/-a always,exit/!d' -e '/-F path='"${sbinary_esc}"'[^[:graph:]]/!d'		\
                -e '/-F path=[^[:space:]]\+/!d'						\
                -e '/-F auid>='"1000"'/!d' -e '/-F auid!=\(4294967295\|unset\)/!d'	\
                -e '/-k \|-F key=/!d' "$afile")

        # Increase the count of inspected files for this sbinary
        count_of_inspected_files=$((count_of_inspected_files + 1))

        # Search current audit rules file's content for presence of rule pattern for this sbinary
        if [[ $base_search ]]
        then

            # Current audit rules file already contains rule for this binary =>
            # Store the exact form of found rule for this binary for further processing
            concrete_rule=$base_search

            # Select all other SUID/SGID binaries possibly also present in the found rule

            readarray -t handled_sbinaries < <(grep -o -e "-F path=[^[:space:]]\+" <<< "$concrete_rule")
            handled_sbinaries=("${handled_sbinaries[@]//-F path=/}")

            # Merge the list of such SUID/SGID binaries found in this iteration with global list ignoring duplicates
            readarray -t sbinaries_to_skip < <(for i in "${sbinaries_to_skip[@]}" "${handled_sbinaries[@]}"; do echo "$i"; done | sort -du)

            # if there is a -F perm flag, remove it
            if grep -q '.*-F\s\+perm=[rwxa]\+.*' <<< "$concrete_rule"; then

                # Separate concrete_rule into three sections using hash '#'
                # sign as a delimiter around rule's permission section borders
                # note that the trailing space after perm flag is captured because there would be 
                # two consecutive spaces after joining remaining parts of the rule together
                concrete_rule="$(echo "$concrete_rule" | sed -n "s/\(.*\)\+\(-F perm=[rwax]\+\ \?\)\+/\1#\2#/p")"

                # Split concrete_rule into head, perm, and tail sections using hash '#' delimiter
                rule_head=$(cut -d '#' -f 1 <<< "$concrete_rule")
                rule_perm=$(cut -d '#' -f 2 <<< "$concrete_rule")
                rule_tail=$(cut -d '#' -f 3 <<< "$concrete_rule")

                # Remove permissions section from existing rule in the file
                sed -i "s#${rule_head}\(.*\)${rule_tail}#${rule_head}${rule_tail}#" "$afile"
            fi
        # If the required audit rule for particular sbinary wasn't found yet, insert it under following conditions:
        #
        # * in the "auditctl" mode of operation insert particular rule each time
        #   (because in this mode there's only one file -- /etc/audit/audit.rules to be inspected for presence of this rule),
        #
        # * in the "augenrules" mode of operation insert particular rule only once and only in case we have already
        #   searched all of the files from /etc/audit/rules.d/*.rules location (since that audit rule can be defined
        #   in any of those files and if not, we want it to be inserted only once into /etc/audit/rules.d/privileged.rules file)
        #
        elif [ "augenrules" == "auditctl" ] || [[ "augenrules" == "augenrules" && $count_of_inspected_files -eq "${#files_to_inspect[@]}" ]]
        then
            # Check if this sbinary wasn't already handled in some of the previous afile iterations
            # Return match only if whole sbinary definition matched (not in the case just prefix matched!!!)
            if [[ ! $(sed -ne "\|${sbinary}|p" <<< "${sbinaries_to_skip[*]}") ]]
            then
                # Current audit rules file's content doesn't contain expected rule for this
                # SUID/SGID binary yet => append it
                echo "$expected_rule" >> "$output_audit_file"
            fi
            continue
        fi
    done
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi