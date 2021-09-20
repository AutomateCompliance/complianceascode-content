# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rsyncd

class disable_rsyncd {
  service {'rsyncd':
    enable => false,
    ensure => 'stopped',
  }
}