description: 'This profile contains configuration checks that align to the

    DISA STIG for Wind River Linux.

    This profile is being developed under the DoD consensus model to

    become a STIG in coordination with DISA FSO.

    What is the status of the Wind River Linux STIG?

    The Wind River Linux STIG is in development under the DoD consensus model

    and Wind River has started the process to get approval from DISA. However, in

    the absence of an approved SRG or STIG, vendor recommendations may be used

    instead. The current contents constitute the vendor recommendations at the

    time of the product release containing these contents.

    Note that changes are expected before approval is granted, and those changes

    will be made available in future Wind River Linux Security Profile 1019 RCPL releases.

    More information, including the following, is available from the DISA FAQs

    at https://public.cyber.mil/stigs/faqs/'
documentation_complete: true
reference: null
selections:
- account_disable_post_pw_expiration
- accounts_have_homedir_login_defs
- accounts_logon_fail_delay
- accounts_max_concurrent_login_sessions
- accounts_maximum_age_login_defs
- accounts_minimum_age_login_defs
- accounts_no_uid_except_zero
- accounts_password_pam_dcredit
- accounts_password_pam_difok
- accounts_password_pam_lcredit
- accounts_password_pam_maxclassrepeat
- accounts_password_pam_maxrepeat
- accounts_password_pam_minclass
- accounts_password_pam_minlen
- accounts_password_pam_ocredit
- accounts_password_pam_retry
- accounts_password_pam_ucredit
- accounts_password_pam_unix_remember
- accounts_password_set_max_life_existing
- accounts_password_set_min_life_existing
- accounts_passwords_pam_faillock_deny
- accounts_passwords_pam_faillock_deny_root
- accounts_tmout
- accounts_umask_etc_login_defs
- accounts_umask_interactive_users
- accounts_user_dot_group_ownership
- accounts_user_dot_no_world_writable_programs
- accounts_user_dot_user_ownership
- accounts_user_home_paths_only
- accounts_user_interactive_home_directory_defined
- accounts_user_interactive_home_directory_exists
- accounts_users_home_files_groupownership
- accounts_users_home_files_ownership
- accounts_users_home_files_permissions
- aide_periodic_cron_checking
- aide_scan_notification
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
- audit_rules_execution_chcon
- audit_rules_execution_semanage
- audit_rules_execution_setsebool
- audit_rules_file_deletion_events_rename
- audit_rules_file_deletion_events_renameat
- audit_rules_file_deletion_events_rmdir
- audit_rules_file_deletion_events_unlink
- audit_rules_file_deletion_events_unlinkat
- audit_rules_kernel_module_loading_delete
- audit_rules_kernel_module_loading_finit
- audit_rules_kernel_module_loading_init
- audit_rules_login_events_faillock
- audit_rules_login_events_lastlog
- audit_rules_privileged_commands
- audit_rules_privileged_commands_chage
- audit_rules_privileged_commands_chsh
- audit_rules_privileged_commands_crontab
- audit_rules_privileged_commands_gpasswd
- audit_rules_privileged_commands_pam_timestamp_check
- audit_rules_privileged_commands_passwd
- audit_rules_privileged_commands_postdrop
- audit_rules_privileged_commands_postqueue
- audit_rules_privileged_commands_ssh_keysign
- audit_rules_privileged_commands_su
- audit_rules_privileged_commands_sudo
- audit_rules_privileged_commands_umount
- audit_rules_privileged_commands_unix_chkpwd
- audit_rules_sysadmin_actions
- audit_rules_system_shutdown
- audit_rules_unsuccessful_file_modification_creat
- audit_rules_unsuccessful_file_modification_ftruncate
- audit_rules_unsuccessful_file_modification_open
- audit_rules_unsuccessful_file_modification_open_by_handle_at
- audit_rules_unsuccessful_file_modification_openat
- audit_rules_unsuccessful_file_modification_truncate
- audit_rules_usergroup_modification
- audit_rules_usergroup_modification_group
- audit_rules_usergroup_modification_gshadow
- audit_rules_usergroup_modification_opasswd
- audit_rules_usergroup_modification_passwd
- audit_rules_usergroup_modification_shadow
- auditd_audispd_configure_remote_server
- auditd_audispd_disk_full_action
- auditd_audispd_encrypt_sent_records
- auditd_audispd_network_failure_action
- auditd_data_retention_action_mail_acct
- auditd_data_retention_admin_space_left_action
- auditd_data_retention_space_left
- banner_etc_issue
- chronyd_or_ntpd_set_maxpoll
- configure_firewalld_ports
- configure_firewalld_rate_limiting
- dir_perms_world_writable_system_owned
- disable_ctrlaltdel_reboot
- disable_host_auth
- display_login_attempts
- ensure_gpgcheck_local_packages
- file_groupowner_cron_allow
- file_groupownership_home_directories
- file_owner_cron_allow
- file_ownership_home_directories
- file_permission_user_init_files
- file_permissions_home_directories
- file_permissions_sshd_private_key
- file_permissions_sshd_pub_key
- file_permissions_ungroupowned
- gid_passwd_group_same
- grub2_enable_fips_mode
- grub2_no_removeable_media
- grub2_password
- grub2_uefi_password
- installed_OS_is_vendor_supported
- kernel_module_dccp_disabled
- kernel_module_usb-storage_disabled
- mount_option_home_nosuid
- mount_option_krb_sec_remote_filesystems
- mount_option_noexec_remote_filesystems
- mount_option_nosuid_remote_filesystems
- mount_option_nosuid_removable_partitions
- network_configure_name_resolution
- network_sniffer_disabled
- no_empty_passwords
- no_files_unowned_by_user
- no_host_based_files
- no_user_host_based_files
- package_openssh-server_installed
- package_rsh-server_removed
- package_screen_installed
- package_telnet-server_removed
- package_tftp-server_removed
- package_vsftpd_removed
- package_ypserv_removed
- partition_for_home
- partition_for_tmp
- partition_for_var
- partition_for_var_log_audit
- postfix_prevent_unrestricted_relay
- require_singleuser_auth
- rpm_verify_hashes
- rpm_verify_permissions
- rsyslog_cron_logging
- rsyslog_nolisten
- rsyslog_remote_loghost
- selinux_all_devicefiles_labeled
- selinux_policytype
- selinux_state
- selinux_user_login_roles
- service_auditd_enabled
- service_autofs_disabled
- service_firewalld_enabled
- service_kdump_disabled
- service_sshd_enabled
- set_password_hashing_algorithm_libuserconf
- set_password_hashing_algorithm_logindefs
- set_password_hashing_algorithm_systemauth
- snmpd_not_default_password
- sshd_allow_only_protocol2
- sshd_disable_compression
- sshd_disable_empty_passwords
- sshd_disable_gssapi_auth
- sshd_disable_kerb_auth
- sshd_disable_rhosts_rsa
- sshd_disable_root_login
- sshd_do_not_permit_user_env
- sshd_enable_strictmodes
- sshd_enable_warning_banner
- sshd_enable_x11_forwarding
- sshd_print_last_log
- sshd_set_idle_timeout
- sshd_set_keepalive_0
- sshd_use_approved_ciphers
- sshd_use_approved_macs
- sshd_use_priv_separation
- sssd_ldap_configure_tls_ca
- sssd_ldap_configure_tls_ca_dir
- sssd_ldap_start_tls
- sudo_remove_no_authenticate
- sudo_remove_nopasswd
- sysctl_net_ipv4_conf_all_accept_redirects
- sysctl_net_ipv4_conf_all_accept_source_route
- sysctl_net_ipv4_conf_all_send_redirects
- sysctl_net_ipv4_conf_default_accept_source_route
- sysctl_net_ipv4_conf_default_send_redirects
- sysctl_net_ipv4_icmp_echo_ignore_broadcasts
- sysctl_net_ipv4_ip_forward
- sysctl_net_ipv6_conf_all_accept_source_route
- tftpd_uses_secure_mode
- var_accounts_max_concurrent_login_sessions=10
- var_accounts_minimum_age_login_defs=1
- var_accounts_maximum_age_login_defs=60
- sysctl_net_ipv4_conf_all_accept_source_route_value=disabled
- sysctl_net_ipv4_conf_default_accept_source_route_value=disabled
- sysctl_net_ipv4_icmp_echo_ignore_broadcasts_value=enabled
- sysctl_net_ipv4_conf_all_accept_redirects_value=disabled
- sysctl_net_ipv6_conf_all_accept_source_route_value=disabled
- var_account_disable_post_pw_expiration=0
- var_accounts_tmout=10_min
- var_selinux_state=enforcing
- var_accounts_passwords_pam_faillock_deny=3
- var_sshd_set_keepalive=0
title: DRAFT DISA STIG for Wind River Linux
