# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_SuSEfirewall2

class enable_SuSEfirewall2 {
  service {'SuSEfirewall2':
    enable => true,
    ensure => 'running',
  }
}