# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_openssh-clients

class install_openssh-clients {
  package { 'openssh-clients':
    ensure => 'installed',
  }
}