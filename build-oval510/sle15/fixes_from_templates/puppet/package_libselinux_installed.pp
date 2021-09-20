# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_libselinux1

class install_libselinux1 {
  package { 'libselinux1':
    ensure => 'installed',
  }
}