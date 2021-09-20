###############################################################################
#
# Bash remediation role for profile anssi_np_nt28_minimal
# Profile Title:  Profile for ANSSI DAT-NT28 Minimal Level
# Profile Description:
# This profile contains items to be applied systematically.
#
# Benchmark ID:  DEBIAN-10
# Benchmark Version:  0.1.58
#
# XCCDF Version:  1.1
#
# This file was generated by OpenSCAP 1.2.16 using:
# 	$ oscap xccdf generate fix --profile anssi_np_nt28_minimal --template urn:xccdf:fix:script:sh sds.xml 
#
# This script is generated from an OpenSCAP profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this remediation role:
# $ sudo ./remediation-role.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 24) for 'sudo_remove_no_authenticate'
###############################################################################
(>&2 echo "Remediating rule 1/24: 'sudo_remove_no_authenticate'")

for f in /etc/sudoers /etc/sudoers.d/* ; do
  if [ ! -e "$f" ] ; then
    continue
  fi
  matching_list=$(grep -P '^(?!#).*[\s]+\!authenticate.*$' $f | uniq )
  if ! test -z "$matching_list"; then
    while IFS= read -r entry; do
      # comment out "!authenticate" matches to preserve user data
      sed -i "s/^${entry}$/# &/g" $f
    done <<< "$matching_list"

    /usr/sbin/visudo -cf $f &> /dev/null || echo "Fail to validate $f with visudo"
  fi
done
# END fix for 'sudo_remove_no_authenticate'

###############################################################################
# BEGIN fix (2 / 24) for 'sudo_remove_nopasswd'
###############################################################################
(>&2 echo "Remediating rule 2/24: 'sudo_remove_nopasswd'")

for f in /etc/sudoers /etc/sudoers.d/* ; do
  if [ ! -e "$f" ] ; then
    continue
  fi
  matching_list=$(grep -P '^(?!#).*[\s]+NOPASSWD[\s]*\:.*$' $f | uniq )
  if ! test -z "$matching_list"; then
    while IFS= read -r entry; do
      # comment out "NOPASSWD" matches to preserve user data
      sed -i "s/^${entry}$/# &/g" $f
    done <<< "$matching_list"

    /usr/sbin/visudo -cf $f &> /dev/null || echo "Fail to validate $f with visudo"
  fi
done
# END fix for 'sudo_remove_nopasswd'

###############################################################################
# BEGIN fix (3 / 24) for 'package_rsyslog_installed'
###############################################################################
(>&2 echo "Remediating rule 3/24: 'package_rsyslog_installed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'package_rsyslog_installed'

###############################################################################
# BEGIN fix (4 / 24) for 'service_rsyslog_enabled'
###############################################################################
(>&2 echo "Remediating rule 4/24: 'service_rsyslog_enabled'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'service_rsyslog_enabled'

###############################################################################
# BEGIN fix (5 / 24) for 'package_syslogng_installed'
###############################################################################
(>&2 echo "Remediating rule 5/24: 'package_syslogng_installed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'package_syslogng_installed'

###############################################################################
# BEGIN fix (6 / 24) for 'service_syslogng_enabled'
###############################################################################
(>&2 echo "Remediating rule 6/24: 'service_syslogng_enabled'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'service_syslogng_enabled'

###############################################################################
# BEGIN fix (7 / 24) for 'file_groupowner_etc_group'
###############################################################################
(>&2 echo "Remediating rule 7/24: 'file_groupowner_etc_group'")


chgrp 0 /etc/group
# END fix for 'file_groupowner_etc_group'

###############################################################################
# BEGIN fix (8 / 24) for 'file_groupowner_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 8/24: 'file_groupowner_etc_gshadow'")


chgrp 42 /etc/gshadow
# END fix for 'file_groupowner_etc_gshadow'

###############################################################################
# BEGIN fix (9 / 24) for 'file_groupowner_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 9/24: 'file_groupowner_etc_passwd'")


chgrp 0 /etc/passwd
# END fix for 'file_groupowner_etc_passwd'

###############################################################################
# BEGIN fix (10 / 24) for 'file_groupowner_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 10/24: 'file_groupowner_etc_shadow'")


chgrp 42 /etc/shadow
# END fix for 'file_groupowner_etc_shadow'

###############################################################################
# BEGIN fix (11 / 24) for 'file_owner_etc_group'
###############################################################################
(>&2 echo "Remediating rule 11/24: 'file_owner_etc_group'")


chown 0 /etc/group
# END fix for 'file_owner_etc_group'

###############################################################################
# BEGIN fix (12 / 24) for 'file_owner_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 12/24: 'file_owner_etc_gshadow'")


chown 0 /etc/gshadow
# END fix for 'file_owner_etc_gshadow'

###############################################################################
# BEGIN fix (13 / 24) for 'file_owner_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 13/24: 'file_owner_etc_passwd'")


chown 0 /etc/passwd
# END fix for 'file_owner_etc_passwd'

###############################################################################
# BEGIN fix (14 / 24) for 'file_owner_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 14/24: 'file_owner_etc_shadow'")


chown 0 /etc/shadow
# END fix for 'file_owner_etc_shadow'

###############################################################################
# BEGIN fix (15 / 24) for 'file_permissions_etc_group'
###############################################################################
(>&2 echo "Remediating rule 15/24: 'file_permissions_etc_group'")


chmod 0644 /etc/group
# END fix for 'file_permissions_etc_group'

###############################################################################
# BEGIN fix (16 / 24) for 'file_permissions_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 16/24: 'file_permissions_etc_gshadow'")


chmod 0640 /etc/gshadow
# END fix for 'file_permissions_etc_gshadow'

###############################################################################
# BEGIN fix (17 / 24) for 'file_permissions_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 17/24: 'file_permissions_etc_passwd'")


chmod 0644 /etc/passwd
# END fix for 'file_permissions_etc_passwd'

###############################################################################
# BEGIN fix (18 / 24) for 'file_permissions_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 18/24: 'file_permissions_etc_shadow'")


chmod 0640 /etc/shadow
# END fix for 'file_permissions_etc_shadow'

###############################################################################
# BEGIN fix (19 / 24) for 'apt_conf_disallow_unauthenticated'
###############################################################################
(>&2 echo "Remediating rule 19/24: 'apt_conf_disallow_unauthenticated'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'apt_conf_disallow_unauthenticated'

###############################################################################
# BEGIN fix (20 / 24) for 'apt_sources_list_official'
###############################################################################
(>&2 echo "Remediating rule 20/24: 'apt_sources_list_official'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'apt_sources_list_official'

###############################################################################
# BEGIN fix (21 / 24) for 'package_inetutils-telnetd_removed'
###############################################################################
(>&2 echo "Remediating rule 21/24: 'package_inetutils-telnetd_removed'")

# CAUTION: This remediation script will remove inetutils-telnetd
#	   from the system, and may remove any packages
#	   that depend on inetutils-telnetd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "inetutils-telnetd"
# END fix for 'package_inetutils-telnetd_removed'

###############################################################################
# BEGIN fix (22 / 24) for 'package_nis_removed'
###############################################################################
(>&2 echo "Remediating rule 22/24: 'package_nis_removed'")

# CAUTION: This remediation script will remove nis
#	   from the system, and may remove any packages
#	   that depend on nis. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "nis"
# END fix for 'package_nis_removed'

###############################################################################
# BEGIN fix (23 / 24) for 'package_telnetd-ssl_removed'
###############################################################################
(>&2 echo "Remediating rule 23/24: 'package_telnetd-ssl_removed'")

# CAUTION: This remediation script will remove telnetd-ssl
#	   from the system, and may remove any packages
#	   that depend on telnetd-ssl. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "telnetd-ssl"
# END fix for 'package_telnetd-ssl_removed'

###############################################################################
# BEGIN fix (24 / 24) for 'package_telnetd_removed'
###############################################################################
(>&2 echo "Remediating rule 24/24: 'package_telnetd_removed'")

# CAUTION: This remediation script will remove telnetd
#	   from the system, and may remove any packages
#	   that depend on telnetd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "telnetd"
# END fix for 'package_telnetd_removed'

