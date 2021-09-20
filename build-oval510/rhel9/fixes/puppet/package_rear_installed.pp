# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_rear

class install_rear {
  package { 'rear':
    ensure => 'installed',
  }
}