# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_apache2

class remove_apache2 {
  package { 'apache2':
    ensure => 'purged',
  }
}