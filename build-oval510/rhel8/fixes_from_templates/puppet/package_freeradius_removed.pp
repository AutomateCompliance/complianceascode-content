# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_freeradius

class remove_freeradius {
  package { 'freeradius':
    ensure => 'purged',
  }
}