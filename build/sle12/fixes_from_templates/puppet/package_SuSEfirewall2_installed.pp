# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_SuSEfirewall2

class install_SuSEfirewall2 {
  package { 'SuSEfirewall2':
    ensure => 'installed',
  }
}