# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_gdm3

class remove_gdm3 {
  package { 'gdm3':
    ensure => 'purged',
  }
}