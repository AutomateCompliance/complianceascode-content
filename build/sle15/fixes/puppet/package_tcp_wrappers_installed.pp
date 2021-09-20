# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_tcpd

class install_tcpd {
  package { 'tcpd':
    ensure => 'installed',
  }
}