# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_vlock

class install_vlock {
  package { 'vlock':
    ensure => 'installed',
  }
}