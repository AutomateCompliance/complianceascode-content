# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_ssh

class enable_ssh {
  service {'ssh':
    enable => true,
    ensure => 'running',
  }
}