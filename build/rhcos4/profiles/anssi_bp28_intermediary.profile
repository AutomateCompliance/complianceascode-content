description: "This profile contains configurations that align to ANSSI-BP-028 at the\
    \ intermediary hardening level.\n\nANSSI is the French National Information Security\
    \ Agency, and stands for Agence nationale de la s\xE9curit\xE9 des syst\xE8mes\
    \ d'information.\nANSSI-BP-028 is a configuration recommendation for GNU/Linux\
    \ systems.\n\nA copy of the ANSSI-BP-028 can be found at the ANSSI website:\n\
    https://www.ssi.gouv.fr/administration/guide/recommandations-de-securite-relatives-a-un-systeme-gnulinux/"
documentation_complete: true
reference: null
selections:
- accounts_maximum_age_login_defs
- accounts_password_minlen_login_defs
- accounts_polyinstantiated_tmp
- accounts_polyinstantiated_var_tmp
- aide_build_database
- audit_rules_privileged_commands_sudo
- chronyd_specify_remote_server
- dir_perms_world_writable_sticky_bits
- ensure_logrotate_activated
- ensure_redhat_gpgkey_installed
- file_owner_etc_gshadow
- file_owner_etc_shadow
- file_permissions_etc_group
- file_permissions_etc_gshadow
- file_permissions_etc_passwd
- file_permissions_etc_shadow
- file_permissions_sshd_private_key
- file_permissions_unauthorized_world_writable
- mount_option_boot_nosuid
- mount_option_home_nosuid
- mount_option_nodev_nonroot_local_partitions
- mount_option_tmp_noexec
- mount_option_tmp_nosuid
- mount_option_var_log_noexec
- mount_option_var_log_nosuid
- mount_option_var_nosuid
- mount_option_var_tmp_noexec
- mount_option_var_tmp_nosuid
- no_direct_root_logins
- package_aide_installed
- package_chrony_installed
- package_rsyslog_installed
- package_sendmail_removed
- package_sudo_installed
- partition_for_home
- partition_for_srv
- partition_for_tmp
- partition_for_var
- partition_for_var_log
- partition_for_var_log_audit
- partition_for_var_tmp
- postfix_client_configure_mail_alias
- prefer_64bit_os
- rsyslog_files_groupownership
- rsyslog_files_ownership
- rsyslog_files_permissions
- rsyslog_remote_loghost
- selinux_state
- service_rsyslog_enabled
- sshd_disable_root_login
- sudo_add_noexec
- sudo_add_requiretty
- sudo_add_use_pty
- sudo_remove_no_authenticate
- sudo_remove_nopasswd
- sudoers_explicit_command_args
- sudoers_no_command_negation
- sudoers_no_root_target
- sysctl_fs_protected_hardlinks
- sysctl_fs_protected_symlinks
- sysctl_fs_suid_dumpable
- sysctl_kernel_dmesg_restrict
- sysctl_kernel_kptr_restrict
- sysctl_kernel_perf_event_paranoid
- sysctl_kernel_randomize_va_space
- sysctl_net_ipv4_conf_all_accept_redirects
- sysctl_net_ipv4_conf_all_accept_source_route
- sysctl_net_ipv4_conf_all_log_martians
- sysctl_net_ipv4_conf_all_rp_filter
- sysctl_net_ipv4_conf_all_secure_redirects
- sysctl_net_ipv4_conf_all_send_redirects
- sysctl_net_ipv4_conf_default_accept_redirects
- sysctl_net_ipv4_conf_default_accept_source_route
- sysctl_net_ipv4_conf_default_rp_filter
- sysctl_net_ipv4_conf_default_secure_redirects
- sysctl_net_ipv4_conf_default_send_redirects
- sysctl_net_ipv4_icmp_ignore_bogus_error_responses
- sysctl_net_ipv4_ip_forward
- sysctl_net_ipv4_tcp_syncookies
- sysctl_net_ipv6_conf_all_accept_redirects
- sysctl_net_ipv6_conf_all_accept_source_route
- sysctl_net_ipv6_conf_default_accept_redirects
- sysctl_net_ipv6_conf_default_accept_source_route
- var_selinux_state=enforcing
- sysctl_net_ipv4_conf_all_accept_redirects_value=disabled
- sysctl_net_ipv4_conf_default_accept_redirects_value=disabled
- var_polyinstantiation_enabled=on
- var_sudo_dedicated_group=sudogrp
- var_sudo_umask=0027
- var_sudo_passwd_timeout=1_minute
- var_accounts_maximum_age_login_defs=90
- var_password_pam_minlen=18
- var_accounts_password_minlen_login_defs=18
- var_password_pam_ocredit=1
- var_password_pam_dcredit=1
- var_password_pam_ucredit=1
- var_password_pam_lcredit=1
- var_accounts_passwords_pam_faillock_fail_interval=900
- var_accounts_passwords_pam_faillock_deny=3
- var_accounts_passwords_pam_faillock_unlock_time=900
- var_password_pam_unix_remember=2
- var_password_pam_unix_rounds=65536
title: DRAFT - ANSSI-BP-028 (intermediary)