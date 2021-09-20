description: 'From NIST 800-171, Section 2.2:

    Security requirements for protecting the confidentiality of CUI in non-federal

    information systems and organizations have a well-defined structure that

    consists of:


    (i) a basic security requirements section;

    (ii) a derived security requirements section.


    The basic security requirements are obtained from FIPS Publication 200, which

    provides the high-level and fundamental security requirements for federal

    information and information systems. The derived security requirements, which

    supplement the basic security requirements, are taken from the security controls

    in NIST Special Publication 800-53.


    This profile configures Red Hat Enterprise Linux 7 to the NIST Special

    Publication 800-53 controls identified for securing Controlled Unclassified

    Information (CUI).'
documentation_complete: true
reference: null
selections:
- accounts_max_concurrent_login_sessions
- accounts_password_minlen_login_defs
- accounts_password_pam_dcredit
- accounts_password_pam_difok
- accounts_password_pam_lcredit
- accounts_password_pam_maxclassrepeat
- accounts_password_pam_maxrepeat
- accounts_password_pam_minlen
- accounts_password_pam_ocredit
- accounts_password_pam_ucredit
- accounts_password_pam_unix_remember
- accounts_passwords_pam_faillock_deny
- accounts_passwords_pam_faillock_interval
- accounts_passwords_pam_faillock_unlock_time
- accounts_umask_etc_bashrc
- accounts_umask_etc_csh_cshrc
- accounts_umask_etc_profile
- audit_rules_for_ospp
- auditd_data_retention_flush
- disable_ctrlaltdel_burstaction
- disable_ctrlaltdel_reboot
- disable_host_auth
- disable_users_coredumps
- ensure_gpgcheck_globally_activated
- ensure_gpgcheck_local_packages
- ensure_gpgcheck_never_disabled
- ensure_redhat_gpgkey_installed
- grub2_audit_argument
- grub2_audit_backlog_limit_argument
- grub2_disable_interactive_boot
- grub2_enable_fips_mode
- grub2_page_poison_argument
- grub2_slub_debug_argument
- grub2_uefi_password
- grub2_vsyscall_argument
- kernel_module_bluetooth_disabled
- kernel_module_cramfs_disabled
- kernel_module_dccp_disabled
- kernel_module_sctp_disabled
- kernel_module_usb-storage_disabled
- mount_option_dev_shm_nodev
- mount_option_dev_shm_noexec
- mount_option_dev_shm_nosuid
- mount_option_home_nodev
- mount_option_home_nosuid
- mount_option_tmp_nodev
- mount_option_tmp_noexec
- mount_option_tmp_nosuid
- mount_option_var_tmp_nodev
- mount_option_var_tmp_noexec
- mount_option_var_tmp_nosuid
- no_empty_passwords
- package_abrt_removed
- package_dracut-fips_installed
- package_screen_installed
- require_singleuser_auth
- securetty_root_login_console_only
- selinux_policytype
- selinux_state
- service_auditd_enabled
- service_autofs_disabled
- service_debug-shell_disabled
- service_firewalld_enabled
- service_kdump_disabled
- service_rpcbind_disabled
- sshd_disable_empty_passwords
- sshd_disable_gssapi_auth
- sshd_disable_kerb_auth
- sshd_disable_rhosts_rsa
- sshd_disable_root_login
- sshd_enable_strictmodes
- sshd_enable_warning_banner
- sshd_set_idle_timeout
- sshd_set_keepalive_0
- sshd_use_approved_ciphers
- sshd_use_approved_macs
- sysctl_fs_protected_hardlinks
- sysctl_fs_protected_symlinks
- sysctl_kernel_dmesg_restrict
- sysctl_kernel_kexec_load_disabled
- sysctl_kernel_kptr_restrict
- sysctl_kernel_yama_ptrace_scope
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
- sysctl_net_ipv4_ip_forward
- sysctl_net_ipv4_tcp_syncookies
- sysctl_net_ipv6_conf_all_accept_ra
- sysctl_net_ipv6_conf_all_accept_redirects
- sysctl_net_ipv6_conf_all_accept_source_route
- sysctl_net_ipv6_conf_default_accept_ra
- sysctl_net_ipv6_conf_default_accept_redirects
- sysctl_net_ipv6_conf_default_accept_source_route
- var_sshd_set_keepalive=0
- var_password_pam_difok=4
- var_password_pam_maxrepeat=3
- var_password_pam_maxclassrepeat=4
- var_auditd_flush=incremental_async
- var_accounts_max_concurrent_login_sessions=10
- var_password_pam_unix_remember=5
- var_accounts_password_minlen_login_defs=12
- var_password_pam_minlen=12
- var_password_pam_ocredit=1
- var_password_pam_dcredit=1
- var_password_pam_ucredit=1
- var_password_pam_lcredit=1
- sshd_idle_timeout_value=10_minutes
- var_accounts_passwords_pam_faillock_deny=3
- var_accounts_passwords_pam_faillock_fail_interval=900
- var_accounts_passwords_pam_faillock_unlock_time=never
- var_selinux_state=enforcing
- var_selinux_policy_name=targeted
- inactivity_timeout_value=10_minutes
title: Unclassified Information in Non-federal Information Systems and Organizations
    (NIST 800-171)
