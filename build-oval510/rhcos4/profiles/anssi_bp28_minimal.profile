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
- ensure_redhat_gpgkey_installed
- package_rsyslog_installed
- package_sendmail_removed
- service_rsyslog_enabled
- sudo_remove_no_authenticate
- sudo_remove_nopasswd
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
title: DRAFT - ANSSI-BP-028 (minimal)
