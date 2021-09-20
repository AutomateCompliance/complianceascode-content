# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_ldap-utils

class remove_ldap-utils {
  package { 'ldap-utils':
    ensure => 'purged',
  }
}