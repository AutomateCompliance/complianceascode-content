# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_apparmor

class install_apparmor {
  package { 'apparmor':
    ensure => 'installed',
  }
}