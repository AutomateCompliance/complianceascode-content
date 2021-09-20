# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_libpam-pwquality

class install_libpam-pwquality {
  package { 'libpam-pwquality':
    ensure => 'installed',
  }
}