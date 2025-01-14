###############################################################################
#
# Bash remediation role for profile anssi_np_nt28_high
# Profile Title:  Profile for ANSSI DAT-NT28 High (Enforced) Level
# Profile Description:
# This profile contains items for GNU/Linux installations storing sensitive informations that can be accessible from unauthenticated or uncontroled networks.
#
# Benchmark ID:  DEBIAN-9
# Benchmark Version:  0.1.58
#
# XCCDF Version:  1.1
#
# This file was generated by OpenSCAP 1.2.16 using:
# 	$ oscap xccdf generate fix --profile anssi_np_nt28_high --template urn:xccdf:fix:script:sh sds.xml 
#
# This script is generated from an OpenSCAP profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this remediation role:
# $ sudo ./remediation-role.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 50) for 'partition_for_home'
###############################################################################
(>&2 echo "Remediating rule 1/50: 'partition_for_home'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'partition_for_home'

###############################################################################
# BEGIN fix (2 / 50) for 'partition_for_tmp'
###############################################################################
(>&2 echo "Remediating rule 2/50: 'partition_for_tmp'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'partition_for_tmp'

###############################################################################
# BEGIN fix (3 / 50) for 'partition_for_var'
###############################################################################
(>&2 echo "Remediating rule 3/50: 'partition_for_var'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'partition_for_var'

###############################################################################
# BEGIN fix (4 / 50) for 'partition_for_var_log'
###############################################################################
(>&2 echo "Remediating rule 4/50: 'partition_for_var_log'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'partition_for_var_log'

###############################################################################
# BEGIN fix (5 / 50) for 'partition_for_var_log_audit'
###############################################################################
(>&2 echo "Remediating rule 5/50: 'partition_for_var_log_audit'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'partition_for_var_log_audit'

###############################################################################
# BEGIN fix (6 / 50) for 'sudo_remove_no_authenticate'
###############################################################################
(>&2 echo "Remediating rule 6/50: 'sudo_remove_no_authenticate'")

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
# BEGIN fix (7 / 50) for 'sudo_remove_nopasswd'
###############################################################################
(>&2 echo "Remediating rule 7/50: 'sudo_remove_nopasswd'")

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
# BEGIN fix (8 / 50) for 'package_audit_installed'
###############################################################################
(>&2 echo "Remediating rule 8/50: 'package_audit_installed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'package_audit_installed'

###############################################################################
# BEGIN fix (9 / 50) for 'service_auditd_enabled'
###############################################################################
(>&2 echo "Remediating rule 9/50: 'service_auditd_enabled'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'service_auditd_enabled'

###############################################################################
# BEGIN fix (10 / 50) for 'grub2_enable_iommu_force'
###############################################################################
(>&2 echo "Remediating rule 10/50: 'grub2_enable_iommu_force'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'grub2_enable_iommu_force'

###############################################################################
# BEGIN fix (11 / 50) for 'package_rsyslog_installed'
###############################################################################
(>&2 echo "Remediating rule 11/50: 'package_rsyslog_installed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'package_rsyslog_installed'

###############################################################################
# BEGIN fix (12 / 50) for 'service_rsyslog_enabled'
###############################################################################
(>&2 echo "Remediating rule 12/50: 'service_rsyslog_enabled'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'service_rsyslog_enabled'

###############################################################################
# BEGIN fix (13 / 50) for 'rsyslog_files_groupownership'
###############################################################################
(>&2 echo "Remediating rule 13/50: 'rsyslog_files_groupownership'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'rsyslog_files_groupownership'

###############################################################################
# BEGIN fix (14 / 50) for 'rsyslog_files_ownership'
###############################################################################
(>&2 echo "Remediating rule 14/50: 'rsyslog_files_ownership'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'rsyslog_files_ownership'

###############################################################################
# BEGIN fix (15 / 50) for 'rsyslog_files_permissions'
###############################################################################
(>&2 echo "Remediating rule 15/50: 'rsyslog_files_permissions'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'rsyslog_files_permissions'

###############################################################################
# BEGIN fix (16 / 50) for 'ensure_logrotate_activated'
###############################################################################
(>&2 echo "Remediating rule 16/50: 'ensure_logrotate_activated'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

LOGROTATE_CONF_FILE="/etc/logrotate.conf"
CRON_DAILY_LOGROTATE_FILE="/etc/cron.daily/logrotate"

# daily rotation is configured
grep -q "^daily$" $LOGROTATE_CONF_FILE|| echo "daily" >> $LOGROTATE_CONF_FILE

# remove any line configuring weekly, monthly or yearly rotation
sed -i '/^\s*\(weekly\|monthly\|yearly\).*$/d' $LOGROTATE_CONF_FILE

# configure cron.daily if not already
if ! grep -q "^[[:space:]]*/usr/sbin/logrotate[[:alnum:][:blank:][:punct:]]*$LOGROTATE_CONF_FILE$" $CRON_DAILY_LOGROTATE_FILE; then
	echo "#!/bin/sh" > $CRON_DAILY_LOGROTATE_FILE
	echo "/usr/sbin/logrotate $LOGROTATE_CONF_FILE" >> $CRON_DAILY_LOGROTATE_FILE
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'ensure_logrotate_activated'

###############################################################################
# BEGIN fix (17 / 50) for 'package_syslogng_installed'
###############################################################################
(>&2 echo "Remediating rule 17/50: 'package_syslogng_installed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'package_syslogng_installed'

###############################################################################
# BEGIN fix (18 / 50) for 'service_syslogng_enabled'
###############################################################################
(>&2 echo "Remediating rule 18/50: 'service_syslogng_enabled'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'service_syslogng_enabled'

###############################################################################
# BEGIN fix (19 / 50) for 'file_permissions_systemmap'
###############################################################################
(>&2 echo "Remediating rule 19/50: 'file_permissions_systemmap'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'file_permissions_systemmap'

###############################################################################
# BEGIN fix (20 / 50) for 'sysctl_fs_protected_hardlinks'
###############################################################################
(>&2 echo "Remediating rule 20/50: 'sysctl_fs_protected_hardlinks'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'sysctl_fs_protected_hardlinks'

###############################################################################
# BEGIN fix (21 / 50) for 'sysctl_fs_protected_symlinks'
###############################################################################
(>&2 echo "Remediating rule 21/50: 'sysctl_fs_protected_symlinks'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'sysctl_fs_protected_symlinks'

###############################################################################
# BEGIN fix (22 / 50) for 'file_groupowner_etc_group'
###############################################################################
(>&2 echo "Remediating rule 22/50: 'file_groupowner_etc_group'")


chgrp 0 /etc/group
# END fix for 'file_groupowner_etc_group'

###############################################################################
# BEGIN fix (23 / 50) for 'file_groupowner_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 23/50: 'file_groupowner_etc_gshadow'")


chgrp 42 /etc/gshadow
# END fix for 'file_groupowner_etc_gshadow'

###############################################################################
# BEGIN fix (24 / 50) for 'file_groupowner_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 24/50: 'file_groupowner_etc_passwd'")


chgrp 0 /etc/passwd
# END fix for 'file_groupowner_etc_passwd'

###############################################################################
# BEGIN fix (25 / 50) for 'file_groupowner_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 25/50: 'file_groupowner_etc_shadow'")


chgrp 42 /etc/shadow
# END fix for 'file_groupowner_etc_shadow'

###############################################################################
# BEGIN fix (26 / 50) for 'file_owner_etc_group'
###############################################################################
(>&2 echo "Remediating rule 26/50: 'file_owner_etc_group'")


chown 0 /etc/group
# END fix for 'file_owner_etc_group'

###############################################################################
# BEGIN fix (27 / 50) for 'file_owner_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 27/50: 'file_owner_etc_gshadow'")


chown 0 /etc/gshadow
# END fix for 'file_owner_etc_gshadow'

###############################################################################
# BEGIN fix (28 / 50) for 'file_owner_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 28/50: 'file_owner_etc_passwd'")


chown 0 /etc/passwd
# END fix for 'file_owner_etc_passwd'

###############################################################################
# BEGIN fix (29 / 50) for 'file_owner_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 29/50: 'file_owner_etc_shadow'")


chown 0 /etc/shadow
# END fix for 'file_owner_etc_shadow'

###############################################################################
# BEGIN fix (30 / 50) for 'file_permissions_etc_group'
###############################################################################
(>&2 echo "Remediating rule 30/50: 'file_permissions_etc_group'")


chmod 0644 /etc/group
# END fix for 'file_permissions_etc_group'

###############################################################################
# BEGIN fix (31 / 50) for 'file_permissions_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 31/50: 'file_permissions_etc_gshadow'")


chmod 0640 /etc/gshadow
# END fix for 'file_permissions_etc_gshadow'

###############################################################################
# BEGIN fix (32 / 50) for 'file_permissions_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 32/50: 'file_permissions_etc_passwd'")


chmod 0644 /etc/passwd
# END fix for 'file_permissions_etc_passwd'

###############################################################################
# BEGIN fix (33 / 50) for 'file_permissions_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 33/50: 'file_permissions_etc_shadow'")


chmod 0640 /etc/shadow
# END fix for 'file_permissions_etc_shadow'

###############################################################################
# BEGIN fix (34 / 50) for 'sysctl_fs_suid_dumpable'
###############################################################################
(>&2 echo "Remediating rule 34/50: 'sysctl_fs_suid_dumpable'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'sysctl_fs_suid_dumpable'

###############################################################################
# BEGIN fix (35 / 50) for 'sysctl_kernel_randomize_va_space'
###############################################################################
(>&2 echo "Remediating rule 35/50: 'sysctl_kernel_randomize_va_space'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'sysctl_kernel_randomize_va_space'

###############################################################################
# BEGIN fix (36 / 50) for 'apt_conf_disallow_unauthenticated'
###############################################################################
(>&2 echo "Remediating rule 36/50: 'apt_conf_disallow_unauthenticated'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'apt_conf_disallow_unauthenticated'

###############################################################################
# BEGIN fix (37 / 50) for 'apt_sources_list_official'
###############################################################################
(>&2 echo "Remediating rule 37/50: 'apt_sources_list_official'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'apt_sources_list_official'

###############################################################################
# BEGIN fix (38 / 50) for 'package_cron_installed'
###############################################################################
(>&2 echo "Remediating rule 38/50: 'package_cron_installed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'package_cron_installed'

###############################################################################
# BEGIN fix (39 / 50) for 'package_inetutils-telnetd_removed'
###############################################################################
(>&2 echo "Remediating rule 39/50: 'package_inetutils-telnetd_removed'")

# CAUTION: This remediation script will remove inetutils-telnetd
#	   from the system, and may remove any packages
#	   that depend on inetutils-telnetd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "inetutils-telnetd"
# END fix for 'package_inetutils-telnetd_removed'

###############################################################################
# BEGIN fix (40 / 50) for 'package_nis_removed'
###############################################################################
(>&2 echo "Remediating rule 40/50: 'package_nis_removed'")

# CAUTION: This remediation script will remove nis
#	   from the system, and may remove any packages
#	   that depend on nis. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "nis"
# END fix for 'package_nis_removed'

###############################################################################
# BEGIN fix (41 / 50) for 'package_ntpdate_removed'
###############################################################################
(>&2 echo "Remediating rule 41/50: 'package_ntpdate_removed'")

# CAUTION: This remediation script will remove ntpdate
#	   from the system, and may remove any packages
#	   that depend on ntpdate. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "ntpdate"
# END fix for 'package_ntpdate_removed'

###############################################################################
# BEGIN fix (42 / 50) for 'package_telnetd-ssl_removed'
###############################################################################
(>&2 echo "Remediating rule 42/50: 'package_telnetd-ssl_removed'")

# CAUTION: This remediation script will remove telnetd-ssl
#	   from the system, and may remove any packages
#	   that depend on telnetd-ssl. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "telnetd-ssl"
# END fix for 'package_telnetd-ssl_removed'

###############################################################################
# BEGIN fix (43 / 50) for 'package_telnetd_removed'
###############################################################################
(>&2 echo "Remediating rule 43/50: 'package_telnetd_removed'")

# CAUTION: This remediation script will remove telnetd
#	   from the system, and may remove any packages
#	   that depend on telnetd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

DEBIAN_FRONTEND=noninteractive apt-get remove -y "telnetd"
# END fix for 'package_telnetd_removed'

###############################################################################
# BEGIN fix (44 / 50) for 'package_ntp_installed'
###############################################################################
(>&2 echo "Remediating rule 44/50: 'package_ntp_installed'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'package_ntp_installed'

###############################################################################
# BEGIN fix (45 / 50) for 'service_ntp_enabled'
###############################################################################
(>&2 echo "Remediating rule 45/50: 'service_ntp_enabled'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'service_ntp_enabled'

###############################################################################
# BEGIN fix (46 / 50) for 'sshd_allow_only_protocol2'
###############################################################################
(>&2 echo "Remediating rule 46/50: 'sshd_allow_only_protocol2'")
# FIX FOR THIS RULE IS MISSING
# END fix for 'sshd_allow_only_protocol2'

###############################################################################
# BEGIN fix (47 / 50) for 'sshd_disable_empty_passwords'
###############################################################################
(>&2 echo "Remediating rule 47/50: 'sshd_disable_empty_passwords'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if [ -e "/etc/ssh/sshd_config" ] ; then
    
    LC_ALL=C sed -i "/^\s*PermitEmptyPasswords\s\+/Id" "/etc/ssh/sshd_config"
else
    touch "/etc/ssh/sshd_config"
fi
cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config.bak"
# Insert before the line matching the regex '^Match'.
line_number="$(LC_ALL=C grep -n "^Match" "/etc/ssh/sshd_config.bak" | LC_ALL=C sed 's/:.*//g')"
if [ -z "$line_number" ]; then
    # There was no match of '^Match', insert at
    # the end of the file.
    printf '%s\n' "PermitEmptyPasswords no" >> "/etc/ssh/sshd_config"
else
    head -n "$(( line_number - 1 ))" "/etc/ssh/sshd_config.bak" > "/etc/ssh/sshd_config"
    printf '%s\n' "PermitEmptyPasswords no" >> "/etc/ssh/sshd_config"
    tail -n "+$(( line_number ))" "/etc/ssh/sshd_config.bak" >> "/etc/ssh/sshd_config"
fi
# Clean up after ourselves.
rm "/etc/ssh/sshd_config.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'sshd_disable_empty_passwords'

###############################################################################
# BEGIN fix (48 / 50) for 'sshd_disable_root_login'
###############################################################################
(>&2 echo "Remediating rule 48/50: 'sshd_disable_root_login'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if [ -e "/etc/ssh/sshd_config" ] ; then
    
    LC_ALL=C sed -i "/^\s*PermitRootLogin\s\+/Id" "/etc/ssh/sshd_config"
else
    touch "/etc/ssh/sshd_config"
fi
cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config.bak"
# Insert before the line matching the regex '^Match'.
line_number="$(LC_ALL=C grep -n "^Match" "/etc/ssh/sshd_config.bak" | LC_ALL=C sed 's/:.*//g')"
if [ -z "$line_number" ]; then
    # There was no match of '^Match', insert at
    # the end of the file.
    printf '%s\n' "PermitRootLogin no" >> "/etc/ssh/sshd_config"
else
    head -n "$(( line_number - 1 ))" "/etc/ssh/sshd_config.bak" > "/etc/ssh/sshd_config"
    printf '%s\n' "PermitRootLogin no" >> "/etc/ssh/sshd_config"
    tail -n "+$(( line_number ))" "/etc/ssh/sshd_config.bak" >> "/etc/ssh/sshd_config"
fi
# Clean up after ourselves.
rm "/etc/ssh/sshd_config.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'sshd_disable_root_login'

###############################################################################
# BEGIN fix (49 / 50) for 'sshd_set_idle_timeout'
###############################################################################
(>&2 echo "Remediating rule 49/50: 'sshd_set_idle_timeout'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

sshd_idle_timeout_value="300"


if [ -e "/etc/ssh/sshd_config" ] ; then
    
    LC_ALL=C sed -i "/^\s*ClientAliveInterval\s\+/Id" "/etc/ssh/sshd_config"
else
    touch "/etc/ssh/sshd_config"
fi
cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config.bak"
# Insert before the line matching the regex '^Match'.
line_number="$(LC_ALL=C grep -n "^Match" "/etc/ssh/sshd_config.bak" | LC_ALL=C sed 's/:.*//g')"
if [ -z "$line_number" ]; then
    # There was no match of '^Match', insert at
    # the end of the file.
    printf '%s\n' "ClientAliveInterval $sshd_idle_timeout_value" >> "/etc/ssh/sshd_config"
else
    head -n "$(( line_number - 1 ))" "/etc/ssh/sshd_config.bak" > "/etc/ssh/sshd_config"
    printf '%s\n' "ClientAliveInterval $sshd_idle_timeout_value" >> "/etc/ssh/sshd_config"
    tail -n "+$(( line_number ))" "/etc/ssh/sshd_config.bak" >> "/etc/ssh/sshd_config"
fi
# Clean up after ourselves.
rm "/etc/ssh/sshd_config.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'sshd_set_idle_timeout'

###############################################################################
# BEGIN fix (50 / 50) for 'sshd_set_keepalive_0'
###############################################################################
(>&2 echo "Remediating rule 50/50: 'sshd_set_keepalive_0'")
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if [ -e "/etc/ssh/sshd_config" ] ; then
    
    LC_ALL=C sed -i "/^\s*ClientAliveCountMax\s\+/Id" "/etc/ssh/sshd_config"
else
    touch "/etc/ssh/sshd_config"
fi
cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config.bak"
# Insert before the line matching the regex '^Match'.
line_number="$(LC_ALL=C grep -n "^Match" "/etc/ssh/sshd_config.bak" | LC_ALL=C sed 's/:.*//g')"
if [ -z "$line_number" ]; then
    # There was no match of '^Match', insert at
    # the end of the file.
    printf '%s\n' "ClientAliveCountMax 0" >> "/etc/ssh/sshd_config"
else
    head -n "$(( line_number - 1 ))" "/etc/ssh/sshd_config.bak" > "/etc/ssh/sshd_config"
    printf '%s\n' "ClientAliveCountMax 0" >> "/etc/ssh/sshd_config"
    tail -n "+$(( line_number ))" "/etc/ssh/sshd_config.bak" >> "/etc/ssh/sshd_config"
fi
# Clean up after ourselves.
rm "/etc/ssh/sshd_config.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi
# END fix for 'sshd_set_keepalive_0'

