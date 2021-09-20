# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_isc-dhcp-server

class remove_isc-dhcp-server {
  package { 'isc-dhcp-server':
    ensure => 'purged',
  }
}