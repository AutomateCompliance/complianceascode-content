# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_slapd

class remove_slapd {
  package { 'slapd':
    ensure => 'purged',
  }
}