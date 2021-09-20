# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

chmod 0700 /boot/efi/EFI/redhat/grub.cfg

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi