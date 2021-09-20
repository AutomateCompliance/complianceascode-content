# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_dovecot-core

class remove_dovecot-core {
  package { 'dovecot-core':
    ensure => 'purged',
  }
}