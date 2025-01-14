description: This profile contains items for GNU/Linux installations exposed to unauthenticated
    flows or multiple sources.
documentation_complete: true
reference: null
selections:
- apt_conf_disallow_unauthenticated
- ensure_logrotate_activated
- file_groupowner_etc_group
- file_groupowner_etc_gshadow
- file_groupowner_etc_passwd
- file_groupowner_etc_shadow
- file_owner_etc_group
- file_owner_etc_gshadow
- file_owner_etc_passwd
- file_owner_etc_shadow
- file_permissions_etc_group
- file_permissions_etc_gshadow
- file_permissions_etc_passwd
- file_permissions_etc_shadow
- file_permissions_systemmap
- package_audit_installed
- package_cron_installed
- package_inetutils-telnetd_removed
- package_nis_removed
- package_ntp_installed
- package_ntpdate_removed
- package_telnetd-ssl_removed
- package_telnetd_removed
- partition_for_home
- partition_for_tmp
- partition_for_var
- partition_for_var_log
- partition_for_var_log_audit
- rsyslog_files_groupownership
- rsyslog_files_ownership
- rsyslog_files_permissions
- service_auditd_enabled
- service_ntp_enabled
- service_timesyncd_enabled
- sshd_allow_only_protocol2
- sshd_disable_empty_passwords
- sshd_disable_root_login
- sshd_set_idle_timeout
- sshd_set_keepalive_0
- sudo_remove_no_authenticate
- sudo_remove_nopasswd
- sysctl_fs_protected_hardlinks
- sysctl_fs_protected_symlinks
- sysctl_fs_suid_dumpable
- sysctl_kernel_randomize_va_space
- sshd_idle_timeout_value=5_minutes
- var_sshd_set_keepalive=0
- file_owner_logfiles_value=adm
- file_groupowner_logfiles_value=adm
title: Profile for ANSSI DAT-NT28 Restrictive Level
