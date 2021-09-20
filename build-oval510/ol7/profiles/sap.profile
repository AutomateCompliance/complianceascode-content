description: 'This profile contains rules for Oracle Linux 7 Operating System in compliance
    with SAP note 2069760 and SAP Security Baseline Template version 1.9 Item I-8
    and section 4.1.2.2.

    Regardless of your system''s workload all of these checks should pass.'
documentation_complete: true
reference: null
selections:
- accounts_authorized_local_users_sidadm_orasid
- file_permissions_etc_shadow
- no_rsh_trust_files
- package_glibc_installed
- package_uuidd_installed
- package_ypbind_removed
- package_ypserv_removed
- service_rlogin_disabled
- service_rsh_disabled
- var_accounts_authorized_local_users_regex=ol7forsap
title: Security Profile of Oracle Linux 7 for SAP
