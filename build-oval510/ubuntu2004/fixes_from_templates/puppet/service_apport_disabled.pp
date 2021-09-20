# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_apport

class disable_apport {
  service {'apport':
    enable => false,
    ensure => 'stopped',
  }
}