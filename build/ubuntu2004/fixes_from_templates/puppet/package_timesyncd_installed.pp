# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_systemd-timesyncd

class install_systemd-timesyncd {
  package { 'systemd-timesyncd':
    ensure => 'installed',
  }
}