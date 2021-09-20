# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_libselinux

class install_libselinux {
  package { 'libselinux':
    ensure => 'installed',
  }
}