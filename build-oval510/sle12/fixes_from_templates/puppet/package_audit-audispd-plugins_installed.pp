# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_audit-audispd-plugins

class install_audit-audispd-plugins {
  package { 'audit-audispd-plugins':
    ensure => 'installed',
  }
}