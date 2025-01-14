description: "This profile defines a baseline that aligns to the \"Level 1 - Server\"\
    \nconfiguration from the Center for Internet Security\xAE\nSUSE Linux Enterprise\
    \ 12 Benchmark\u2122, v3.0.0, released 04-27-2021.\n\nThis profile includes Center\
    \ for Internet Security\xAE\nSUSE Linux Enterprise 12 CIS Benchmarks\u2122 content."
documentation_complete: true
reference: https://www.cisecurity.org/cis-benchmarks/#suse_linux
selections:
- account_disable_post_pw_expiration
- account_unique_id
- account_unique_name
- accounts_maximum_age_login_defs
- accounts_minimum_age_login_defs
- accounts_no_uid_except_zero
- accounts_password_all_shadowed
- accounts_password_warn_age_login_defs
- accounts_passwords_pam_tally2
- accounts_tmout
- accounts_umask_etc_bashrc
- accounts_umask_etc_login_defs
- accounts_umask_etc_profile
- aide_build_database
- aide_periodic_cron_checking
- banner_etc_issue
- banner_etc_motd
- bios_enable_execution_restrictions
- chronyd_run_as_chrony_user
- chronyd_specify_remote_server
- coredump_disable_backtraces
- coredump_disable_storage
- cracklib_accounts_password_pam_dcredit
- cracklib_accounts_password_pam_lcredit
- cracklib_accounts_password_pam_minlen
- cracklib_accounts_password_pam_ocredit
- cracklib_accounts_password_pam_retry
- cracklib_accounts_password_pam_ucredit
- dconf_db_up_to_date
- dconf_gnome_banner_enabled
- dconf_gnome_login_banner_text
- dir_perms_world_writable_sticky_bits
- disable_host_auth
- disable_prelink
- disable_users_coredumps
- ensure_gpgcheck_globally_activated
- ensure_gpgcheck_never_disabled
- file_groupowner_backup_etc_group
- file_groupowner_backup_etc_passwd
- file_groupowner_backup_etc_shadow
- file_groupowner_cron_allow
- file_groupowner_cron_d
- file_groupowner_cron_daily
- file_groupowner_cron_hourly
- file_groupowner_cron_monthly
- file_groupowner_cron_weekly
- file_groupowner_crontab
- file_groupowner_etc_group
- file_groupowner_etc_issue
- file_groupowner_etc_motd
- file_groupowner_etc_passwd
- file_groupowner_etc_shadow
- file_groupowner_grub2_cfg
- file_groupowner_sshd_config
- file_owner_backup_etc_group
- file_owner_backup_etc_passwd
- file_owner_backup_etc_shadow
- file_owner_cron_allow
- file_owner_cron_d
- file_owner_cron_daily
- file_owner_cron_hourly
- file_owner_cron_monthly
- file_owner_cron_weekly
- file_owner_crontab
- file_owner_etc_group
- file_owner_etc_issue
- file_owner_etc_motd
- file_owner_etc_passwd
- file_owner_etc_shadow
- file_owner_grub2_cfg
- file_owner_sshd_config
- file_permissions_backup_etc_group
- file_permissions_backup_etc_passwd
- file_permissions_backup_etc_shadow
- file_permissions_cron_d
- file_permissions_cron_daily
- file_permissions_cron_hourly
- file_permissions_cron_monthly
- file_permissions_cron_weekly
- file_permissions_crontab
- file_permissions_etc_group
- file_permissions_etc_issue
- file_permissions_etc_motd
- file_permissions_etc_passwd
- file_permissions_etc_shadow
- file_permissions_grub2_cfg
- file_permissions_sshd_config
- file_permissions_sshd_private_key
- file_permissions_sshd_pub_key
- file_permissions_unauthorized_world_writable
- file_permissions_ungroupowned
- gid_passwd_group_same
- grub2_password
- grub2_uefi_password
- install_PAE_kernel_on_x86-32
- kernel_module_udf_disabled
- mount_option_dev_shm_nodev
- mount_option_dev_shm_noexec
- mount_option_dev_shm_nosuid
- mount_option_home_nodev
- mount_option_nodev_removable_partitions
- mount_option_noexec_removable_partitions
- mount_option_nosuid_removable_partitions
- mount_option_tmp_nodev
- mount_option_tmp_noexec
- mount_option_tmp_nosuid
- mount_option_var_tmp_nodev
- mount_option_var_tmp_noexec
- mount_option_var_tmp_nosuid
- no_files_unowned_by_user
- no_netrc_files
- no_shelllogin_for_systemaccounts
- ntpd_configure_restrictions
- ntpd_run_as_ntp_user
- ntpd_specify_remote_server
- package_aide_installed
- package_bind_removed
- package_dhcp_removed
- package_dovecot_removed
- package_httpd_removed
- package_iptables_installed
- package_net-snmp_removed
- package_nfs-utils_removed
- package_openldap-clients_removed
- package_openldap-servers_removed
- package_pam_apparmor_installed
- package_rsh_removed
- package_rsyslog_installed
- package_samba_removed
- package_squid_removed
- package_sudo_installed
- package_talk_removed
- package_telnet-server_removed
- package_telnet_removed
- package_vsftpd_removed
- package_xinetd_removed
- package_ypbind_removed
- package_ypserv_removed
- partition_for_tmp
- postfix_network_listening_disabled
- require_emergency_target_auth
- require_singleuser_auth
- service_autofs_disabled
- service_avahi-daemon_disabled
- service_crond_enabled
- service_iptables_enabled
- service_ntpd_enabled
- service_rpcbind_disabled
- service_rsyncd_disabled
- service_rsyslog_enabled
- set_password_hashing_algorithm_logindefs
- sshd_allow_only_protocol2
- sshd_disable_empty_passwords
- sshd_disable_rhosts
- sshd_disable_root_login
- sshd_do_not_permit_user_env
- sshd_set_idle_timeout
- sshd_set_keepalive
- sshd_set_loglevel_verbose
- sshd_set_max_auth_tries
- sshd_set_max_sessions
- sshd_set_maxstartups
- sshd_use_approved_ciphers
- sshd_use_approved_macs
- sudo_add_use_pty
- sudo_custom_logfile
- sysctl_fs_suid_dumpable
- sysctl_kernel_randomize_va_space
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
- sysctl_net_ipv6_conf_all_forwarding
- sysctl_net_ipv6_conf_default_accept_ra
- sysctl_net_ipv6_conf_default_accept_redirects
- sysctl_net_ipv6_conf_default_accept_source_route
- use_pam_wheel_for_su
- wireless_disable_interfaces
- xwindows_remove_packages
- login_banner_text=cis_default
- var_multiple_time_servers=default
- var_postfix_inet_interfaces=loopback-only
- sysctl_net_ipv6_conf_all_forwarding_value=disabled
- sysctl_net_ipv4_conf_all_accept_source_route_value=disabled
- sysctl_net_ipv4_conf_default_accept_source_route_value=disabled
- sysctl_net_ipv6_conf_all_accept_source_route_value=disabled
- sysctl_net_ipv6_conf_default_accept_source_route_value=disabled
- sysctl_net_ipv4_conf_all_accept_redirects_value=disabled
- sysctl_net_ipv4_conf_default_accept_redirects_value=disabled
- sysctl_net_ipv6_conf_all_accept_redirects_value=disabled
- sysctl_net_ipv6_conf_default_accept_redirects_value=disabled
- sysctl_net_ipv4_conf_all_secure_redirects_value=disabled
- sysctl_net_ipv4_conf_default_secure_redirects_value=disabled
- sysctl_net_ipv4_conf_all_log_martians_value=enabled
- sysctl_net_ipv4_conf_default_log_martians_value=enabled
- sysctl_net_ipv4_icmp_echo_ignore_broadcasts_value=enabled
- sysctl_net_ipv4_icmp_ignore_bogus_error_responses_value=enabled
- sysctl_net_ipv4_conf_all_rp_filter_value=enabled
- sysctl_net_ipv4_conf_default_rp_filter_value=enabled
- sysctl_net_ipv4_tcp_syncookies_value=enabled
- sysctl_net_ipv6_conf_all_accept_ra_value=disabled
- sysctl_net_ipv6_conf_default_accept_ra_value=disabled
- var_sudo_logfile=var_log_sudo_log
- sshd_max_auth_tries_value=4
- sshd_approved_ciphers=cis_sle12
- sshd_approved_macs=cis_sle12
- sshd_idle_timeout_value=15_minutes
- var_sshd_set_keepalive=0
- var_sshd_set_maxstartups=10:30:60
- var_sshd_max_sessions=10
- var_password_pam_dcredit=1
- var_password_pam_ucredit=1
- var_password_pam_lcredit=1
- var_password_pam_ocredit=1
- var_password_pam_minlen=14
- var_password_pam_retry=3
- var_password_pam_tally2=5
- var_accounts_maximum_age_login_defs=365
- var_accounts_minimum_age_login_defs=1
- var_accounts_password_warn_age_login_defs=7
- var_account_disable_post_pw_expiration=30
- var_accounts_tmout=15_min
- var_accounts_user_umask=027
title: CIS SUSE Linux Enterprise 12 Benchmark for Level 1 - Server
