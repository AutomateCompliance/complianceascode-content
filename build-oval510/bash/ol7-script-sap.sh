###############################################################################
#
# Bash remediation role for profile sap
# Profile Title:  Security Profile of Oracle Linux 7 for SAP
# Profile Description:
# This profile contains rules for Oracle Linux 7 Operating System in compliance with SAP note 2069760 and SAP Security Baseline Template version 1.9 Item I-8 and section 4.1.2.2.
# Regardless of your system's workload all of these checks should pass.
#
# Benchmark ID:  OL-7
# Benchmark Version:  0.1.58
#
# XCCDF Version:  1.1
#
# This file was generated by OpenSCAP 1.2.16 using:
# 	$ oscap xccdf generate fix --profile sap --template urn:xccdf:fix:script:sh sds.xml 
#
# This script is generated from an OpenSCAP profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this remediation role:
# $ sudo ./remediation-role.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 9) for 'package_glibc_installed'
###############################################################################
(>&2 echo "Remediating rule 1/9: 'package_glibc_installed'")

if ! rpm -q --quiet "glibc" ; then
    yum install -y "glibc"
fi
# END fix for 'package_glibc_installed'

###############################################################################
# BEGIN fix (2 / 9) for 'package_uuidd_installed'
###############################################################################
(>&2 echo "Remediating rule 2/9: 'package_uuidd_installed'")

if ! rpm -q --quiet "uuidd" ; then
    yum install -y "uuidd"
fi
# END fix for 'package_uuidd_installed'

###############################################################################
# BEGIN fix (3 / 9) for 'accounts_authorized_local_users_sidadm_orasid'
###############################################################################
(>&2 echo "Remediating rule 3/9: 'accounts_authorized_local_users_sidadm_orasid'")

var_accounts_authorized_local_users_regex="^(root|bin|daemon|adm|lp|sync|shutdown|halt|mail|operator|games|ftp|nobody|pegasus|systemd-bus-proxy|systemd-network|dbus|polkitd|abrt|unbound|tss|libstoragemgmt|rpc|colord|usbmuxd$|pcp|saslauth|geoclue|setroubleshoot|rtkit|chrony|qemu|radvd|rpcuser|nfsnobody|pulse|gdm|gnome-initial-setup|postfix|avahi|ntp|sshd|tcpdump|oprofile|uuidd)$"


# never delete the root user
default_os_user="root"

# add users sidamd, orasid, sapadm and oracle if needed
userlist="root"
sapmnt_SID_stem="/sapmnt/[A-Z][A-Z0-9][A-Z0-9]"
oracle_SID_stem="/oracle/[A-Z][A-Z0-9][A-Z0-9]"

# if owner of any directory or file in the given list is the user oracle,
# add the user oracle to the variable userlist. 
# Usage: verify_oracle_user_to_userlist "$path_list"
# Note: this function might modify the value of the global variable userlist
function verify_oracle_user_to_userlist {
	local path_list="$1"
	local is_oracle=no
	for path in $path_list ; do
		if [ $(ls -ld "$path" | awk '{print $3}') = "oracle" ]; then
			is_oracle=yes
		fi
	done
	if test "$is_oracle" = yes ; then
		userlist="$userlist|oracle" ;
	fi
} 

# if /sapmnt is a directory or a symbolic link to a directory,
# then try to add SAP system users to the userlist
if [ -d "/sapmnt" ] ; then 
	# if /sapmnt/SID exists, add sidadm to the userlist
	path_sapmnt_SID_list=$(find /sapmnt/ -regex "^$sapmnt_SID_stem$")
	for path_sapmnt_SID in $path_sapmnt_SID_list ; do
		SID=${path_sapmnt_SID:8:3}
		userlist="$userlist|$(echo "$SID" | sed -e 's/\(.*\)/\L\1/')adm"
	done

	# try to get brspace from directories /sapmnt/SID/exe (SAP binaries of old structure)
	# and /sapmnt/SID/exe/<codepage>/<platform> (SAP binaries of new structure)
	path_to_brspace_list=$(find /sapmnt/ -regex "^$sapmnt_SID_stem/exe/\(\|\(\|n\)uc/[a-z0-9_]+/\)brspace$")

	# if brspace exist in any of the above directory of a SID, add orasid to the userlist 
	for path_to_brspace in $path_to_brspace_list ; do
		SID=${path_to_brspace:8:3}
		userlist="$userlist|ora$(echo "$SID" | sed -e 's/\(.*\)/\L\1/')"
	done

	# if owner of any brspace file is oracle, add oracle to the userlist
	verify_oracle_user_to_userlist "$path_to_brspace_list"
fi

# if owner of any /oracle/SID directory is oracle, add oracle to the userlist
# the user oracle could be added twice in the userlist, but it is harmlos to the final result
if [ -d "/oracle" ] ; then
	path_oracle_SID_list=$(find /oracle/ -regex "^$oracle_SID_stem$")
	verify_oracle_user_to_userlist "$path_oracle_SID_list"
fi

# if /usr/sap/hostctrl is a directory or a symbolic link to a directory, add sapadm to the list
if [ -d /usr/sap/hostctrl ] ; then
	userlist="$userlist|sapadm"
fi

# delete users that is in /etc/passwd but neither in the userlist
# nor in default_os_user nor in the var_accounts_authorized_local_users_regex
default_os_user=^$default_os_user$
userlist=^$userlist$
for username in $( sed 's/:.*//' /etc/passwd ) ; do
	if [[ ! "$username" =~ ($default_os_user|$userlist|$var_accounts_authorized_local_users_regex) ]]; then
		userdel $username ; 
	fi
done
# END fix for 'accounts_authorized_local_users_sidadm_orasid'

###############################################################################
# BEGIN fix (4 / 9) for 'file_permissions_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 4/9: 'file_permissions_etc_shadow'")


chmod 0000 /etc/shadow
# END fix for 'file_permissions_etc_shadow'

###############################################################################
# BEGIN fix (5 / 9) for 'package_ypbind_removed'
###############################################################################
(>&2 echo "Remediating rule 5/9: 'package_ypbind_removed'")

# CAUTION: This remediation script will remove ypbind
#	   from the system, and may remove any packages
#	   that depend on ypbind. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "ypbind" ; then

    yum remove -y "ypbind"

fi
# END fix for 'package_ypbind_removed'

###############################################################################
# BEGIN fix (6 / 9) for 'package_ypserv_removed'
###############################################################################
(>&2 echo "Remediating rule 6/9: 'package_ypserv_removed'")

# CAUTION: This remediation script will remove ypserv
#	   from the system, and may remove any packages
#	   that depend on ypserv. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "ypserv" ; then

    yum remove -y "ypserv"

fi
# END fix for 'package_ypserv_removed'

###############################################################################
# BEGIN fix (7 / 9) for 'service_rlogin_disabled'
###############################################################################
(>&2 echo "Remediating rule 7/9: 'service_rlogin_disabled'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'rlogin.service'
"$SYSTEMCTL_EXEC" disable 'rlogin.service'
"$SYSTEMCTL_EXEC" mask 'rlogin.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^rlogin.socket'; then
    "$SYSTEMCTL_EXEC" stop 'rlogin.socket'
    "$SYSTEMCTL_EXEC" mask 'rlogin.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'rlogin.service' || true

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'service_rlogin_disabled'

###############################################################################
# BEGIN fix (8 / 9) for 'service_rsh_disabled'
###############################################################################
(>&2 echo "Remediating rule 8/9: 'service_rsh_disabled'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'rsh.service'
"$SYSTEMCTL_EXEC" disable 'rsh.service'
"$SYSTEMCTL_EXEC" mask 'rsh.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^rsh.socket'; then
    "$SYSTEMCTL_EXEC" stop 'rsh.socket'
    "$SYSTEMCTL_EXEC" mask 'rsh.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'rsh.service' || true

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'service_rsh_disabled'

###############################################################################
# BEGIN fix (9 / 9) for 'no_rsh_trust_files'
###############################################################################
(>&2 echo "Remediating rule 9/9: 'no_rsh_trust_files'")

find /root -xdev -type f -name ".rhosts" -exec rm -f {} \;
find /home -maxdepth 2 -xdev -type f -name ".rhosts" -exec rm -f {} \;
rm -f /etc/hosts.equiv
# END fix for 'no_rsh_trust_files'

