# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_apparmor

class enable_apparmor {
  service {'apparmor':
    enable => true,
    ensure => 'running',
  }
}