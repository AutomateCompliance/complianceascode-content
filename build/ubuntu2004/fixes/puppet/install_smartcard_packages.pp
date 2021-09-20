# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_libpam-pkcs11

class install_libpam-pkcs11 {
  package { 'libpam-pkcs11':
    ensure => 'installed',
  }
}