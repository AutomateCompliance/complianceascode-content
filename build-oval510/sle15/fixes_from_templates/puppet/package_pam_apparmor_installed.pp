# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_pam_apparmor

class install_pam_apparmor {
  package { 'pam_apparmor':
    ensure => 'installed',
  }
}