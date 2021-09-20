description: 'This compliance profile reflects the core set of security

    related configuration settings for deployment of Red Hat Virtualization

    Host (RHVH) 4.x into U.S. Defense, Intelligence, and Civilian agencies.

    Development partners and sponsors include the U.S. National Institute

    of Standards and Technology (NIST), U.S. Department of Defense,

    the National Security Agency, and Red Hat.


    This baseline implements configuration requirements from the following

    sources:


    - Committee on National Security Systems Instruction No. 1253 (CNSSI 1253)

    - NIST 800-53 control selections for MODERATE impact systems (NIST 800-53)

    - U.S. Government Configuration Baseline (USGCB)

    - NIAP Protection Profile for Virtualization v1.0 (VPP v1.0)


    For any differing configuration requirements, e.g. password lengths, the stricter

    security setting was chosen. Security Requirement Traceability Guides (RTMs) and

    sample System Security Configuration Guides are provided via the

    scap-security-guide-docs package.


    This profile reflects U.S. Government consensus content and is developed through

    the ComplianceAsCode project, championed by the National

    Security Agency. Except for differences in formatting to accommodate

    publishing processes, this profile mirrors ComplianceAsCode

    content as minor divergences, such as bugfixes, work through the

    consensus and release processes.'
documentation_complete: true
reference: https://www.niap-ccevs.org/Profile/Info.cfm?PPID=408&id=408
selections:
- account_disable_post_pw_expiration
- accounts_maximum_age_login_defs
- accounts_minimum_age_login_defs
- accounts_no_uid_except_zero
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
- accounts_passwords_pam_faillock_deny_root
- accounts_passwords_pam_faillock_interval
- accounts_passwords_pam_faillock_unlock_time
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
- audit_rules_execution_setfiles
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
- audit_rules_login_events_tallylog
- audit_rules_media_export
- audit_rules_privileged_commands
- audit_rules_privileged_commands_chage
- audit_rules_privileged_commands_chsh
- audit_rules_privileged_commands_crontab
- audit_rules_privileged_commands_gpasswd
- audit_rules_privileged_commands_newgrp
- audit_rules_privileged_commands_pam_timestamp_check
- audit_rules_privileged_commands_passwd
- audit_rules_privileged_commands_postdrop
- audit_rules_privileged_commands_postqueue
- audit_rules_privileged_commands_ssh_keysign
- audit_rules_privileged_commands_su
- audit_rules_privileged_commands_sudo
- audit_rules_privileged_commands_sudoedit
- audit_rules_privileged_commands_umount
- audit_rules_privileged_commands_unix_chkpwd
- audit_rules_privileged_commands_userhelper
- audit_rules_sysadmin_actions
- audit_rules_system_shutdown
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
- banner_etc_issue
- clean_components_post_updating
- configure_bind_crypto_policy
- configure_crypto_policy
- configure_kerberos_crypto_policy
- configure_libreswan_crypto_policy
- configure_opensc_card_drivers
- configure_openssl_crypto_policy
- configure_ssh_crypto_policy
- disable_host_auth
- enable_fips_mode
- ensure_gpgcheck_globally_activated
- ensure_gpgcheck_local_packages
- ensure_gpgcheck_never_disabled
- ensure_redhat_gpgkey_installed
- file_ownership_var_log_audit
- file_permissions_sshd_private_key
- file_permissions_sshd_pub_key
- file_permissions_var_log_audit
- force_opensc_card_drivers
- grub2_audit_argument
- grub2_disable_interactive_boot
- grub2_enable_selinux
- grub2_password
- grub2_uefi_password
- installed_OS_is_FIPS_certified
- installed_OS_is_vendor_supported
- kernel_module_bluetooth_disabled
- kernel_module_usb-storage_disabled
- no_direct_root_logins
- no_empty_passwords
- no_password_auth_for_systemaccounts
- package_opensc_installed
- package_pcsc-lite_installed
- require_singleuser_auth
- restrict_serial_port_logins
- rpm_verify_hashes
- rpm_verify_ownership
- rpm_verify_permissions
- sebool_fips_mode
- securetty_root_login_console_only
- selinux_confinement_of_daemons
- selinux_policytype
- selinux_state
- service_auditd_enabled
- service_bluetooth_disabled
- service_pcscd_enabled
- set_password_hashing_algorithm_libuserconf
- set_password_hashing_algorithm_logindefs
- set_password_hashing_algorithm_systemauth
- sshd_disable_compression
- sshd_disable_empty_passwords
- sshd_disable_gssapi_auth
- sshd_disable_kerb_auth
- sshd_disable_root_login
- sshd_do_not_permit_user_env
- sshd_enable_strictmodes
- sshd_enable_warning_banner
- sshd_print_last_log
- sshd_set_idle_timeout
- sshd_set_keepalive_0
- sshd_set_loglevel_info
- sshd_use_priv_separation
- sssd_enable_smartcards
- sysctl_kernel_exec_shield
- sysctl_kernel_kptr_restrict
- sysctl_kernel_randomize_va_space
- var_accounts_passwords_pam_faillock_deny=3
- var_accounts_passwords_pam_faillock_fail_interval=900
- var_accounts_passwords_pam_faillock_unlock_time=never
- var_sshd_set_keepalive=0
- var_system_crypto_policy=fips_ospp
- var_smartcard_drivers=cac
title: VPP - Protection Profile for Virtualization v. 1.0 for Red Hat Virtualization
    Host (RHVH)
