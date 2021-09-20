# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_policycoreutils-python-utils

class install_policycoreutils-python-utils {
  package { 'policycoreutils-python-utils':
    ensure => 'installed',
  }
}