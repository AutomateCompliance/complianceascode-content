# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_xserver-xorg

class remove_xserver-xorg {
  package { 'xserver-xorg':
    ensure => 'purged',
  }
}