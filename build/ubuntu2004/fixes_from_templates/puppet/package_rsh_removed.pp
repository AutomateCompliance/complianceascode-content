# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_rsh-client

class remove_rsh-client {
  package { 'rsh-client':
    ensure => 'purged',
  }
}