documentation_complete: true

title: 'CSCF RHEL6 MLS Core Baseline'

description: "This profile reflects the Centralized Super Computing Facility \n(CSCF) baseline for Red Hat Enterprise Linux\
    \ 6. This baseline has received \ngovernment ATO through the ICD 503 process, utilizing the CNSSI 1253 cross \ndomain\
    \ overlay. This profile should be considered in active development. \nAdditional tailoring will be needed, such as the\
    \ creation of RBAC roles \nfor production deployment."

selections:
    - var_auditd_max_log_file_action=keep_logs
    - var_accounts_max_concurrent_login_sessions=3
    - var_accounts_maximum_age_login_defs=180
    - var_accounts_password_minlen_login_defs=12
    - var_selinux_policy_name=mls
    - account_disable_post_pw_expiration
    - account_temp_expire_date
    - aide_build_database
    - "!aide_periodic_cron_checking"
    - audit_rules_usergroup_modification
    - audit_rules_immutable
    - "!audit_rules_unsuccessful_file_modification"
    - "!audit_rules_file_deletion_events"
    - audit_rules_kernel_module_loading
    - file_permissions_var_log_audit
    - file_ownership_var_log_audit
    - audit_rules_mac_modification
    - audit_rules_login_events
    - audit_rules_session_events
    - audit_rules_media_export
    - audit_rules_networkconfig_modification
    - "!audit_rules_privileged_commands"
    - audit_rules_dac_modification_chmod
    - audit_rules_dac_modification_chown
    - audit_rules_dac_modification_fchmod
    - audit_rules_dac_modification_fchmodat
    - audit_rules_dac_modification_fchown
    - audit_rules_dac_modification_fchownat
    - audit_rules_dac_modification_fremovexattr
    - audit_rules_dac_modification_fsetxattr
    - audit_rules_dac_modification_lremovexattr
    - audit_rules_dac_modification_lchown
    - audit_rules_dac_modification_lsetxattr
    - audit_rules_dac_modification_removexattr
    - audit_rules_dac_modification_setxattr
    - audit_rules_time_adjtimex
    - audit_rules_time_clock_settime
    - audit_rules_time_settimeofday
    - audit_rules_time_stime
    - audit_rules_time_watch_localtime
    - audit_rules_sysadmin_actions
    - bios_disable_usb_boot
    - "!grub_legacy_nousb_argument"
    - grub_legacy_password
    - auditd_data_retention_action_mail_acct
    - auditd_data_retention_admin_space_left_action
    - auditd_audispd_syslog_plugin_activated
    - auditd_data_retention_max_log_file
    - auditd_data_retention_max_log_file_action
    - auditd_data_retention_num_logs
    - auditd_data_retention_space_left_action
    - "!cups_disable_browsing"
    - cups_disable_printserver
    - wireless_disable_interfaces
    - "!accounts_passwords_pam_faillock_unlock_time"
    - "!accounts_passwords_pam_faillock_deny"
    - "!accounts_passwords_pam_faillock_interval"
    - dhcp_server_deny_bootp
    - dhcp_server_deny_decline
    - dhcp_server_disable_ddns
    - disable_anacron
    - service_avahi-daemon_disabled
    - sysconfig_networking_bootproto_ifcfg
    - service_dhcpd_disabled
    - service_named_disabled
    - gconf_gnome_disable_thumbnailers
    - "!service_httpd_disabled"
    - kernel_module_ipv6_option_disabled
    - kernel_module_cramfs_disabled
    - kernel_module_freevxfs_disabled
    - kernel_module_hfs_disabled
    - kernel_module_hfsplus_disabled
    - kernel_module_jffs2_disabled
    - kernel_module_squashfs_disabled
    - "!kernel_module_udf_disabled"
    - disable_prelink
    - kernel_module_dccp_disabled
    - kernel_module_rds_disabled
    - kernel_module_sctp_disabled
    - kernel_module_tipc_disabled
    - service_rexec_disabled
    - service_rlogin_disabled
    - service_rsh_disabled
    - sysctl_net_ipv4_conf_default_send_redirects
    - sysctl_net_ipv4_conf_all_send_redirects
    - sysctl_net_ipv4_conf_all_accept_source_route
    - sysctl_net_ipv4_conf_all_accept_redirects
    - sysctl_net_ipv4_conf_all_secure_redirects
    - sysctl_net_ipv4_ip_forward
    - "!service_telnet_disabled"
    - service_tftp_disabled
    - service_vsftpd_disabled
    - service_ypbind_disabled
    - dns_server_authenticate_zone_transfers
    - grub_legacy_audit_argument
    - gconf_gdm_enable_warning_gui_banner
    - gconf_gnome_screensaver_idle_activation_enabled
    - gconf_gnome_screensaver_lock_enabled
    - grub_legacy_enable_selinux
    - ensure_logrotate_activated
    - file_ownership_binary_dirs
    - file_ownership_library_dirs
    - file_permissions_binary_dirs
    - file_permissions_etc_passwd
    - "!file_permissions_library_dirs"
    - gconf_gnome_disable_automount
    - file_groupowner_etc_group
    - file_groupowner_etc_gshadow
    - file_groupowner_etc_passwd
    - rsyslog_files_groupownership
    - groupowner_shadow_file
    - file_permissions_httpd_server_conf_files
    - dir_perms_var_log_httpd
    - httpd_servertokens_prod
    - kernel_module_bluetooth_disabled
    - kernel_module_usb-storage_disabled
    - ldap_client_start_tls
    - ldap_client_tls_cacertpath
    - accounts_password_pam_unix_remember
    - mount_option_dev_shm_nodev
    - mount_option_dev_shm_noexec
    - mount_option_dev_shm_nosuid
    - mount_option_tmp_nodev
    - "!mount_option_tmp_noexec"
    - mount_option_tmp_nosuid
    - "!mount_option_var_tmp_bind"
    - mount_option_nodev_nonroot_local_partitions
    - "!mount_option_noexec_removable_partitions"
    - "!mount_option_nosuid_removable_partitions"
    - "!accounts_max_concurrent_login_sessions"
    - network_disable_zeroconf
    - network_ipv6_disable_rpc
    - network_sniffer_disabled
    - no_empty_passwords
    - "!file_permissions_ungroupowned"
    - "!no_files_unowned_by_user"
    - accounts_password_all_shadowed
    - no_netrc_files
    - accounts_no_uid_except_zero
    - no_direct_root_logins
    - file_permissions_unauthorized_sgid
    - "!file_permissions_unauthorized_suid"
    - ntpd_specify_multiple_servers
    - ntpd_specify_remote_server
    - package_aide_installed
    - package_openldap-servers_removed
    - package_rsyslog_installed
    - package_sendmail_removed
    - "!partition_for_var_log"
    - partition_for_var_log_audit
    - accounts_maximum_age_login_defs
    - accounts_password_minlen_login_defs
    - "!cracklib_accounts_password_pam_maxrepeat"
    - cracklib_accounts_password_pam_difok
    - cracklib_accounts_password_pam_dcredit
    - cracklib_accounts_password_pam_lcredit
    - cracklib_accounts_password_pam_ocredit
    - cracklib_accounts_password_pam_ucredit
    - cracklib_accounts_password_pam_retry
    - accounts_password_warn_age_login_defs
    - file_permissions_etc_group
    - file_permissions_etc_shadow
    - file_permissions_etc_gshadow
    - postfix_network_listening_disabled
    - securetty_root_login_console_only
    - restrict_serial_port_logins
    - "!rpm_verify_hashes"
    - "!rpm_verify_permissions"
    - rsyslog_nolisten
    - rsyslog_accept_remote_messages_tcp
    - rsyslog_accept_remote_messages_udp
    - "!rsyslog_remote_loghost"
    - selinux_confinement_of_daemons
    - selinux_all_devicefiles_labeled
    - service_abrtd_disabled
    - service_acpid_disabled
    - service_atd_disabled
    - service_auditd_enabled
    - service_autofs_disabled
    - service_bluetooth_disabled
    - service_certmonger_disabled
    - service_cgconfig_disabled
    - service_cpuspeed_disabled
    - service_crond_enabled
    - service_cups_disabled
    - service_haldaemon_disabled
    - service_iptables_enabled
    - "!service_irqbalance_enabled"
    - "!service_kdump_disabled"
    - service_mdmonitor_disabled
    - service_messagebus_disabled
    - service_netconsole_disabled
    - service_ntpd_enabled
    - service_ntpdate_disabled
    - service_oddjobd_disabled
    - service_portreserve_disabled
    - service_psacct_enabled
    - service_qpidd_disabled
    - service_quota_nld_disabled
    - service_rdisc_disabled
    - service_rhnsd_disabled
    - service_rhsmcertd_disabled
    - service_rsyslog_enabled
    - service_saslauthd_disabled
    - service_smartd_disabled
    - service_sysstat_disabled
    - gconf_gnome_screensaver_mode_blank
    - umask_for_daemons
    - "!gconf_gdm_set_login_banner_text"
    - set_iptables_default_rule
    - set_iptables_default_rule_forward
    - set_password_hashing_algorithm_systemauth
    - set_password_hashing_algorithm_logindefs
    - set_password_hashing_algorithm_libuserconf
    - "!gconf_gnome_screensaver_idle_delay"
    - selinux_policytype
    - selinux_state
    - sysctl_net_ipv4_conf_all_rp_filter
    - sysctl_net_ipv4_conf_default_accept_redirects
    - sysctl_net_ipv4_conf_default_accept_source_route
    - sysctl_net_ipv4_conf_default_rp_filter
    - sysctl_net_ipv4_conf_default_secure_redirects
    - sysctl_net_ipv4_icmp_echo_ignore_broadcasts
    - sysctl_net_ipv4_tcp_syncookies
    - disable_users_coredumps
    - sysctl_net_ipv4_conf_all_log_martians
    - sysctl_net_ipv4_icmp_ignore_bogus_error_responses
    - "!banner_etc_issue"
    - sshd_allow_only_protocol2
    - sshd_disable_root_login
    - sshd_use_approved_ciphers
    - "!dir_perms_world_writable_sticky_bits"
    - tftpd_uses_secure_mode
    - package_bind_removed
    - package_dhcp_removed
    - "!package_httpd_removed"
    - package_rsh-server_removed
    - "!package_telnet-server_removed"
    - package_tftp-server_removed
    - package_vsftpd_removed
    - package_ypserv_removed
    - file_owner_etc_group
    - file_owner_etc_gshadow
    - file_owner_etc_passwd
    - "!rsyslog_files_ownership"
    - userowner_shadow_file
    - wireless_disable_in_bios
    - "!dir_perms_world_writable_system_owned"
    - grub_legacy_disable_interactive_boot
    - install_hids
    - install_antivirus
    - sysctl_kernel_exec_shield
    - sysctl_kernel_randomize_va_space
    - bios_enable_execution_restrictions
    - sysctl_fs_suid_dumpable
    - xwindows_runlevel_setting
    - "!file_permissions_unauthorized_world_writable"
