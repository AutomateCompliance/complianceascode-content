description: 'This Security Technical Implementation Guide is published as a tool
    to

    improve the security of Department of Defense (DoD) information systems.

    The requirements are derived from the National Institute of Standards and

    Technology (NIST) 800-53 and related documents.'
documentation_complete: true
reference: null
selections:
- account_disable_post_pw_expiration
- account_temp_expire_date
- accounts_max_concurrent_login_sessions
- accounts_maximum_age_login_defs
- accounts_minimum_age_login_defs
- accounts_password_pam_dcredit
- accounts_password_pam_dictcheck
- accounts_password_pam_difok
- accounts_password_pam_enforcing
- accounts_password_pam_lcredit
- accounts_password_pam_minlen
- accounts_password_pam_ocredit
- accounts_password_pam_retry
- accounts_password_pam_ucredit
- accounts_password_pam_unix_remember
- accounts_passwords_pam_faildelay_delay
- accounts_passwords_pam_tally2
- accounts_tmout
- accounts_umask_etc_login_defs
- aide_check_audit_tools
- aide_periodic_cron_checking
- apparmor_configured
- apt_conf_disallow_unauthenticated
- audit_rules_dac_modification_chmod
- audit_rules_dac_modification_chown
- audit_rules_dac_modification_fchmod
- audit_rules_dac_modification_fchmodat
- audit_rules_dac_modification_fchown
- audit_rules_dac_modification_fchownat
- audit_rules_dac_modification_fremovexattr
- audit_rules_dac_modification_fsetxattr
- audit_rules_dac_modification_lchown
- audit_rules_dac_modification_lremovexattr
- audit_rules_dac_modification_lsetxattr
- audit_rules_dac_modification_removexattr
- audit_rules_dac_modification_setxattr
- audit_rules_execution_chacl
- audit_rules_execution_chcon
- audit_rules_execution_setfacl
- audit_rules_file_deletion_events_rename
- audit_rules_file_deletion_events_renameat
- audit_rules_file_deletion_events_unlink
- audit_rules_file_deletion_events_unlinkat
- audit_rules_kernel_module_loading_delete
- audit_rules_kernel_module_loading_finit
- audit_rules_kernel_module_loading_init
- audit_rules_login_events_faillog
- audit_rules_login_events_lastlog
- audit_rules_login_events_tallylog
- audit_rules_privileged_commands_chage
- audit_rules_privileged_commands_chfn
- audit_rules_privileged_commands_chsh
- audit_rules_privileged_commands_crontab
- audit_rules_privileged_commands_gpasswd
- audit_rules_privileged_commands_kmod
- audit_rules_privileged_commands_modprobe
- audit_rules_privileged_commands_mount
- audit_rules_privileged_commands_newgrp
- audit_rules_privileged_commands_pam_timestamp_check
- audit_rules_privileged_commands_passwd
- audit_rules_privileged_commands_ssh_agent
- audit_rules_privileged_commands_ssh_keysign
- audit_rules_privileged_commands_su
- audit_rules_privileged_commands_sudo
- audit_rules_privileged_commands_sudoedit
- audit_rules_privileged_commands_umount
- audit_rules_privileged_commands_usermod
- audit_rules_session_events_btmp
- audit_rules_session_events_utmp
- audit_rules_session_events_wtmp
- audit_rules_suid_privilege_function
- audit_rules_unsuccessful_file_modification_creat
- audit_rules_unsuccessful_file_modification_ftruncate
- audit_rules_unsuccessful_file_modification_open
- audit_rules_unsuccessful_file_modification_open_by_handle_at
- audit_rules_unsuccessful_file_modification_openat
- audit_rules_unsuccessful_file_modification_truncate
- audit_rules_usergroup_modification_group
- audit_rules_usergroup_modification_gshadow
- audit_rules_usergroup_modification_opasswd
- audit_rules_usergroup_modification_passwd
- audit_rules_usergroup_modification_shadow
- auditd_audispd_configure_remote_server
- auditd_audispd_configure_sufficiently_large_partition
- auditd_data_disk_full_action
- auditd_data_retention_action_mail_acct
- auditd_data_retention_space_left
- auditd_data_retention_space_left_action
- chronyd_or_ntpd_set_maxpoll
- clean_components_post_updating
- dconf_gnome_banner_enabled
- dconf_gnome_disable_ctrlaltdel_reboot
- dconf_gnome_login_banner_text
- dconf_gnome_screensaver_lock_enabled
- dir_ownership_library_dirs
- dir_permissions_library_dirs
- dir_perms_world_writable_sticky_bits
- disable_ctrlaltdel_burstaction
- disable_ctrlaltdel_reboot
- display_login_attempts
- encrypt_partitions
- ensure_rtc_utc_configuration
- file_groupowner_var_log
- file_groupownership_system_commands_dirs
- file_owner_var_log
- file_ownership_binary_dirs
- file_ownership_library_dirs
- file_permissions_binary_dirs
- file_permissions_library_dirs
- file_permissions_var_log
- grub2_audit_argument
- grub2_uefi_password
- install_smartcard_packages
- is_fips_mode_enabled
- package_aide_installed
- package_apparmor_installed
- package_audit-audispd-plugins_installed
- package_audit_installed
- package_opensc_installed
- package_openssh-server_installed
- package_pam_pwquality_installed
- package_rsh-server_removed
- package_telnetd_removed
- permissions_local_var_log
- policy_temp_passwords_immediate_change
- rsyslog_remote_access_monitoring
- service_auditd_enabled
- service_kdump_disabled
- service_rsyslog_enabled
- service_sshd_enabled
- set_password_hashing_algorithm_logindefs
- smartcard_configure_ca
- smartcard_configure_cert_checking
- smartcard_configure_crl
- smartcard_pam_enabled
- sshd_disable_empty_passwords
- sshd_disable_x11_forwarding
- sshd_do_not_permit_user_env
- sshd_set_idle_timeout
- sshd_set_keepalive
- sshd_use_approved_ciphers_ordered_stig
- sshd_use_approved_macs_ordered_stig
- sshd_x11_use_localhost
- sssd_offline_cred_expiration
- sudo_require_authentication
- sysctl_kernel_randomize_va_space
- sysctl_net_ipv4_tcp_syncookies
- vlock_installed
- wireless_disable_interfaces
- login_banner_text=dod_banners
- var_accounts_minimum_age_login_defs=1
- var_accounts_maximum_age_login_defs=60
- var_accounts_tmout=10_min
- var_accounts_user_umask=077
- sshd_idle_timeout_value=10_minutes
- var_password_pam_ucredit=1
- var_password_pam_lcredit=1
- var_password_pam_dcredit=1
- var_password_pam_difok=8
- var_password_pam_minlen=15
- var_password_pam_ocredit=1
- var_password_pam_dictcheck=1
- var_password_pam_retry=3
- var_password_pam_unix_remember=5
- var_password_pam_delay=4000000
- var_auditd_action_mail_acct=root
- var_auditd_space_left=250MB
- var_auditd_space_left_action=email
- var_accounts_max_concurrent_login_sessions=10
- var_time_service_set_maxpoll=36_hours
title: Canonical Ubuntu 20.04 LTS Security Technical Implementation Guide (STIG) V1R1
