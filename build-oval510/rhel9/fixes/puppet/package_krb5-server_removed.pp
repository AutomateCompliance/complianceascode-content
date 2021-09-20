# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_krb5-server

class remove_krb5-server {
  package { 'krb5-server':
    ensure => 'purged',
  }
}