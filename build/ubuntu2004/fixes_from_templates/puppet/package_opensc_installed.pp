# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_opensc-pkcs11

class install_opensc-pkcs11 {
  package { 'opensc-pkcs11':
    ensure => 'installed',
  }
}