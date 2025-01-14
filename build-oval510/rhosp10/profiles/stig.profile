description: Controls for scanning against classified STIG for rhosp10
documentation_complete: true
reference: null
selections:
- cinder_conf_file_perms
- cinder_file_ownership
- cinder_file_perms
- cinder_glance_tls
- cinder_nas_secure_file_permissions
- cinder_nova_tls
- cinder_osapi_max_request_body
- cinder_tls_enabled
- cinder_using_keystone
- horizon_csrf_cookie_secure
- horizon_disable_password_reveal
- horizon_file_ownership
- horizon_file_perms
- horizon_password_autocomplete
- horizon_session_cookie_httponly
- horizon_session_cookie_secure
- horizon_use_ssl
- keystone_algorithm_hashing
- keystone_disable_admin_token
- keystone_disable_user_account_days_inactive
- keystone_file_ownership
- keystone_file_perms
- keystone_lockout_duration
- keystone_lockout_failure_attempts
- keystone_max_request_body_size
- keystone_use_ssl
- neutron_api_use_ssl
- neutron_file_ownership
- neutron_file_perms
- neutron_use_https
- neutron_use_keystone
- nova_file_ownership
- nova_file_perms
- nova_secure_authentication
- nova_secure_glance
- nova_use_keystone
- var_keystone_lockout_failure_attempts=3
- var_keystone_lockout_duration=15_minutes
- var_keystone_disable_user_account_days_inactive=90
title: '[DRAFT] STIG for Red Hat OpenStack Plaform 10'
