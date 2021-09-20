# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_setroubleshoot-server

class remove_setroubleshoot-server {
  package { 'setroubleshoot-server':
    ensure => 'purged',
  }
}