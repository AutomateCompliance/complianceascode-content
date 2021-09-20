# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_openldap-clients

class remove_openldap-clients {
  package { 'openldap-clients':
    ensure => 'purged',
  }
}