# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_crypto-policies

class install_crypto-policies {
  package { 'crypto-policies':
    ensure => 'installed',
  }
}