# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_dhcp-server

class remove_dhcp-server {
  package { 'dhcp-server':
    ensure => 'purged',
  }
}