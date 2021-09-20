# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_kbd

class install_kbd {
  package { 'kbd':
    ensure => 'installed',
  }
}