# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_nfs-server

class disable_nfs-server {
  service {'nfs-server':
    enable => false,
    ensure => 'stopped',
  }
}