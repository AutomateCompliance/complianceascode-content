# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_strongswan

class install_strongswan {
  package { 'strongswan':
    ensure => 'installed',
  }
}