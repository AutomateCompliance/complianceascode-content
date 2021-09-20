# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_openssl-pkcs11

class install_openssl-pkcs11 {
  package { 'openssl-pkcs11':
    ensure => 'installed',
  }
}