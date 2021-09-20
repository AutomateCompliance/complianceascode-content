# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_chronyd

class enable_chronyd {
  service {'chronyd':
    enable => true,
    ensure => 'running',
  }
}