# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_vim-enhanced

class install_vim-enhanced {
  package { 'vim-enhanced':
    ensure => 'installed',
  }
}