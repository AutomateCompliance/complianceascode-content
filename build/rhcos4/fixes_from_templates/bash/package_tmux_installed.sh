# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle
# reboot = false
# strategy = enable
# complexity = low
# disruption = low

printf '%s\n' "Can't generate a remediation for product rhcos4, because there is no pkg_manager set in product.yml" >&2
exit 1