# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_setroubleshoot-plugins

class remove_setroubleshoot-plugins {
  package { 'setroubleshoot-plugins':
    ensure => 'purged',
  }
}