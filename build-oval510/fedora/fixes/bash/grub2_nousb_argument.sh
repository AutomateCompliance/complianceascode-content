# platform = Red Hat Enterprise Linux 7,multi_platform_fedora
# Remediation is applicable only in certain platforms
if rpm --quiet -q grub2-common; then

# Correct the form of default kernel command line in /etc/default/grub
if ! grep -q ^GRUB_CMDLINE_LINUX=\".*nousb.*\" /etc/default/grub;
then
  # Edit configuration setting
  # Append 'nousb' argument to /etc/default/grub (if not present yet)
  sed -i "s/\(GRUB_CMDLINE_LINUX=\)\"\(.*\)\"/\1\"\2 nousb\"/" /etc/default/grub
  # Edit runtime setting
  # Correct the form of kernel command line for each installed kernel in the bootloader
  /sbin/grubby --update-kernel=ALL --args="nousb"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi