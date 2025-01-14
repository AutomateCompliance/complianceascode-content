description: 'This compliance profile reflects the core set of Moderate-Impact Baseline

    configuration settings for deployment of Red Hat Enterprise

    Linux CoreOS into U.S. Defense, Intelligence, and Civilian agencies.

    Development partners and sponsors include the U.S. National Institute

    of Standards and Technology (NIST), U.S. Department of Defense,

    the National Security Agency, and Red Hat.


    This baseline implements configuration requirements from the following

    sources:


    - NIST 800-53 control selections for Moderate-Impact systems (NIST 800-53)


    For any differing configuration requirements, e.g. password lengths, the stricter

    security setting was chosen. Security Requirement Traceability Guides (RTMs) and

    sample System Security Configuration Guides are provided via the

    scap-security-guide-docs package.


    This profile reflects U.S. Government consensus content and is developed through

    the ComplianceAsCode initiative, championed by the National

    Security Agency. Except for differences in formatting to accommodate

    publishing processes, this profile mirrors ComplianceAsCode

    content as minor divergences, such as bugfixes, work through the

    consensus and release processes.'
documentation_complete: true
reference: https://nvd.nist.gov/800-53/Rev4/impact/moderate
selections:
- accounts_no_uid_except_zero
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
- audit_rules_etc_group_open
- audit_rules_etc_group_open_by_handle_at
- audit_rules_etc_group_openat
- audit_rules_etc_gshadow_open
- audit_rules_etc_gshadow_open_by_handle_at
- audit_rules_etc_gshadow_openat
- audit_rules_etc_passwd_open
- audit_rules_etc_passwd_open_by_handle_at
- audit_rules_etc_passwd_openat
- audit_rules_etc_shadow_open
- audit_rules_etc_shadow_open_by_handle_at
- audit_rules_etc_shadow_openat
- audit_rules_execution_chcon
- audit_rules_execution_restorecon
- audit_rules_execution_semanage
- audit_rules_execution_setfiles
- audit_rules_execution_setsebool
- audit_rules_execution_seunshare
- audit_rules_file_deletion_events_rename
- audit_rules_file_deletion_events_renameat
- audit_rules_file_deletion_events_rmdir
- audit_rules_file_deletion_events_unlink
- audit_rules_file_deletion_events_unlinkat
- audit_rules_immutable
- audit_rules_kernel_module_loading_delete
- audit_rules_kernel_module_loading_finit
- audit_rules_kernel_module_loading_init
- audit_rules_login_events_faillock
- audit_rules_login_events_lastlog
- audit_rules_login_events_tallylog
- audit_rules_mac_modification
- audit_rules_media_export
- audit_rules_networkconfig_modification
- audit_rules_privileged_commands_at
- audit_rules_privileged_commands_chage
- audit_rules_privileged_commands_chsh
- audit_rules_privileged_commands_crontab
- audit_rules_privileged_commands_gpasswd
- audit_rules_privileged_commands_mount
- audit_rules_privileged_commands_newgidmap
- audit_rules_privileged_commands_newgrp
- audit_rules_privileged_commands_newuidmap
- audit_rules_privileged_commands_pam_timestamp_check
- audit_rules_privileged_commands_passwd
- audit_rules_privileged_commands_postdrop
- audit_rules_privileged_commands_postqueue
- audit_rules_privileged_commands_pt_chown
- audit_rules_privileged_commands_ssh_keysign
- audit_rules_privileged_commands_su
- audit_rules_privileged_commands_sudo
- audit_rules_privileged_commands_sudoedit
- audit_rules_privileged_commands_umount
- audit_rules_privileged_commands_unix_chkpwd
- audit_rules_privileged_commands_userhelper
- audit_rules_privileged_commands_usernetctl
- audit_rules_session_events
- audit_rules_sysadmin_actions
- audit_rules_time_adjtimex
- audit_rules_time_clock_settime
- audit_rules_time_settimeofday
- audit_rules_time_stime
- audit_rules_time_watch_localtime
- audit_rules_unsuccessful_file_modification_chmod
- audit_rules_unsuccessful_file_modification_chown
- audit_rules_unsuccessful_file_modification_creat
- audit_rules_unsuccessful_file_modification_fchmod
- audit_rules_unsuccessful_file_modification_fchmodat
- audit_rules_unsuccessful_file_modification_fchown
- audit_rules_unsuccessful_file_modification_fchownat
- audit_rules_unsuccessful_file_modification_fremovexattr
- audit_rules_unsuccessful_file_modification_fsetxattr
- audit_rules_unsuccessful_file_modification_ftruncate
- audit_rules_unsuccessful_file_modification_lchown
- audit_rules_unsuccessful_file_modification_lremovexattr
- audit_rules_unsuccessful_file_modification_lsetxattr
- audit_rules_unsuccessful_file_modification_open
- audit_rules_unsuccessful_file_modification_open_by_handle_at
- audit_rules_unsuccessful_file_modification_open_by_handle_at_o_creat
- audit_rules_unsuccessful_file_modification_open_by_handle_at_o_trunc_write
- audit_rules_unsuccessful_file_modification_open_by_handle_at_rule_order
- audit_rules_unsuccessful_file_modification_open_o_creat
- audit_rules_unsuccessful_file_modification_open_o_trunc_write
- audit_rules_unsuccessful_file_modification_open_rule_order
- audit_rules_unsuccessful_file_modification_openat
- audit_rules_unsuccessful_file_modification_openat_o_creat
- audit_rules_unsuccessful_file_modification_openat_o_trunc_write
- audit_rules_unsuccessful_file_modification_openat_rule_order
- audit_rules_unsuccessful_file_modification_removexattr
- audit_rules_unsuccessful_file_modification_rename
- audit_rules_unsuccessful_file_modification_renameat
- audit_rules_unsuccessful_file_modification_setxattr
- audit_rules_unsuccessful_file_modification_truncate
- audit_rules_unsuccessful_file_modification_unlink
- audit_rules_unsuccessful_file_modification_unlinkat
- audit_rules_usergroup_modification_group
- audit_rules_usergroup_modification_gshadow
- audit_rules_usergroup_modification_opasswd
- audit_rules_usergroup_modification_passwd
- audit_rules_usergroup_modification_shadow
- auditd_data_disk_error_action
- auditd_data_disk_full_action
- auditd_data_retention_admin_space_left_action
- auditd_data_retention_flush
- auditd_data_retention_max_log_file
- auditd_data_retention_max_log_file_action
- auditd_data_retention_num_logs
- auditd_data_retention_space_left
- auditd_data_retention_space_left_action
- auditd_freq
- auditd_local_events
- auditd_log_format
- auditd_name_format
- auditd_write_logs
- banner_etc_issue
- bios_disable_usb_boot
- chronyd_client_only
- chronyd_no_chronyc_network
- chronyd_or_ntpd_set_maxpoll
- chronyd_or_ntpd_specify_multiple_servers
- chronyd_or_ntpd_specify_remote_server
- configure_crypto_policy
- configure_kerberos_crypto_policy
- configure_openssl_crypto_policy
- configure_ssh_crypto_policy
- configure_usbguard_auditbackend
- coredump_disable_backtraces
- coredump_disable_storage
- coreos_audit_backlog_limit_kernel_argument
- coreos_audit_option
- coreos_disable_interactive_boot
- coreos_enable_selinux_kernel_argument
- coreos_nousb_kernel_argument
- coreos_page_poison_kernel_argument
- coreos_pti_kernel_argument
- coreos_vsyscall_kernel_argument
- directory_access_var_log_audit
- directory_permissions_var_log_audit
- disable_ctrlaltdel_burstaction
- disable_ctrlaltdel_reboot
- disable_users_coredumps
- enable_fips_mode
- ensure_logrotate_activated
- file_groupowner_sshd_config
- file_owner_sshd_config
- file_ownership_var_log_audit
- file_permissions_sshd_config
- file_permissions_sshd_private_key
- file_permissions_sshd_pub_key
- file_permissions_var_log_audit
- kernel_module_atm_disabled
- kernel_module_bluetooth_disabled
- kernel_module_can_disabled
- kernel_module_cramfs_disabled
- kernel_module_firewire-core_disabled
- kernel_module_freevxfs_disabled
- kernel_module_hfs_disabled
- kernel_module_hfsplus_disabled
- kernel_module_jffs2_disabled
- kernel_module_sctp_disabled
- kernel_module_squashfs_disabled
- kernel_module_tipc_disabled
- kernel_module_udf_disabled
- kernel_module_usb-storage_disabled
- no_direct_root_logins
- no_empty_passwords
- no_netrc_files
- no_shelllogin_for_systemaccounts
- no_tmux_in_shells
- package_audit_installed
- package_iptables_installed
- package_sudo_installed
- package_usbguard_installed
- partition_for_var_log
- partition_for_var_log_audit
- require_singleuser_auth
- selinux_confinement_of_daemons
- selinux_policytype
- selinux_state
- service_auditd_enabled
- service_autofs_disabled
- service_bluetooth_disabled
- service_chronyd_or_ntpd_enabled
- service_debug-shell_disabled
- service_systemd-coredump_disabled
- service_usbguard_enabled
- sshd_disable_rhosts
- sshd_limit_user_access
- sshd_set_idle_timeout
- sshd_set_keepalive_0
- sysctl_fs_protected_hardlinks
- sysctl_fs_protected_symlinks
- sysctl_kernel_core_pattern
- sysctl_kernel_dmesg_restrict
- sysctl_kernel_kexec_load_disabled
- sysctl_kernel_kptr_restrict
- sysctl_kernel_perf_event_paranoid
- sysctl_kernel_unprivileged_bpf_disabled
- sysctl_kernel_yama_ptrace_scope
- sysctl_net_core_bpf_jit_harden
- sysctl_net_ipv4_conf_all_accept_redirects
- sysctl_net_ipv4_conf_all_accept_source_route
- sysctl_net_ipv4_conf_all_log_martians
- sysctl_net_ipv4_conf_all_rp_filter
- sysctl_net_ipv4_conf_all_secure_redirects
- sysctl_net_ipv4_conf_all_send_redirects
- sysctl_net_ipv4_conf_default_accept_redirects
- sysctl_net_ipv4_conf_default_accept_source_route
- sysctl_net_ipv4_conf_default_log_martians
- sysctl_net_ipv4_conf_default_rp_filter
- sysctl_net_ipv4_conf_default_secure_redirects
- sysctl_net_ipv4_conf_default_send_redirects
- sysctl_net_ipv4_icmp_echo_ignore_broadcasts
- sysctl_net_ipv4_icmp_ignore_bogus_error_responses
- sysctl_net_ipv4_tcp_syncookies
- sysctl_net_ipv6_conf_all_accept_ra
- sysctl_net_ipv6_conf_all_accept_redirects
- sysctl_net_ipv6_conf_all_accept_source_route
- sysctl_net_ipv6_conf_default_accept_ra
- sysctl_net_ipv6_conf_default_accept_redirects
- sysctl_net_ipv6_conf_default_accept_source_route
- usbguard_allow_hid_and_hub
- wireless_disable_in_bios
- wireless_disable_interfaces
- var_sshd_set_keepalive=0
- var_auditd_flush=incremental_async
- var_selinux_state=enforcing
- var_selinux_policy_name=targeted
- var_system_crypto_policy=fips
- sshd_idle_timeout_value=10_minutes
- var_auditd_disk_full_action=syslog
- var_auditd_admin_space_left_action=syslog
- var_auditd_space_left_action=syslog
- var_auditd_disk_error_action=syslog
- var_auditd_max_log_file_action=rotate
- coreos_vsyscall_kernel_argument.role=unscored
- coreos_vsyscall_kernel_argument.severity=info
title: NIST 800-53 Moderate-Impact Baseline for Red Hat Enterprise Linux CoreOS
