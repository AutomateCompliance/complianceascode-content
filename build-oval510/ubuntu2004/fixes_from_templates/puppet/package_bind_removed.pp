# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_bind9

class remove_bind9 {
  package { 'bind9':
    ensure => 'purged',
  }
}