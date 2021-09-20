description: "This profile contains configurations that align to ANSSI-BP-028 at the\
    \ minimal hardening level.\n\nANSSI is the French National Information Security\
    \ Agency, and stands for Agence nationale de la s\xE9curit\xE9 des syst\xE8mes\
    \ d'information.\nANSSI-BP-028 is a configuration recommendation for GNU/Linux\
    \ systems.\n\nA copy of the ANSSI-BP-028 can be found at the ANSSI website:\n\
    https://www.ssi.gouv.fr/administration/guide/recommandations-de-securite-relatives-a-un-systeme-gnulinux/"
documentation_complete: true
reference: null
selections:
- accounts_maximum_age_login_defs
- accounts_password_minlen_login_defs
- accounts_password_pam_dcredit
- accounts_password_pam_lcredit
- accounts_password_pam_minlen
- accounts_password_pam_ocredit
- accounts_password_pam_ucredit
- accounts_password_pam_unix_remember
- accounts_password_pam_unix_rounds_password_auth
- accounts_password_pam_unix_rounds_system_auth
- accounts_passwords_pam_faillock_deny
- accounts_passwords_pam_faillock_deny_root
- accounts_passwords_pam_faillock_interval
- accounts_passwords_pam_faillock_unlock_time
- dnf-automatic_apply_updates
- dnf-automatic_security_updates_only
- ensure_gpgcheck_globally_activated
- ensure_gpgcheck_local_packages
- ensure_gpgcheck_never_disabled
- ensure_oracle_gpgkey_installed
- file_permissions_unauthorized_sgid
- file_permissions_unauthorized_suid
- package_dhcp_removed
- package_dnf-automatic_installed
- package_rsh-server_removed
- package_rsh_removed
- package_rsyslog_installed
- package_sendmail_removed
- package_talk-server_removed
- package_talk_removed
- package_telnet-server_removed
- package_telnet_removed
- package_tftp-server_removed
- package_xinetd_removed
- package_ypbind_removed
- package_ypserv_removed
- security_patches_up_to_date
- service_rsyslog_enabled
- set_password_hashing_algorithm_systemauth
- sudo_remove_no_authenticate
- sudo_remove_nopasswd
- timer_dnf-automatic_enabled
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
title: ANSSI-BP-028 (minimal)
