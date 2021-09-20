# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle



# Correct the form of default kernel command line in GRUB
if grep -q '^GRUB_CMDLINE_LINUX=.*iommu=.*"'  '/etc/default/grub' ; then
	# modify the GRUB command-line if an iommu= arg already exists
	sed -i 's/\(^GRUB_CMDLINE_LINUX=".*\)iommu=[^[:space:]]*\(.*"\)/\1 iommu=force \2/'  '/etc/default/grub'
else
	# no iommu=arg is present, append it
	sed -i 's/\(^GRUB_CMDLINE_LINUX=".*\)"/\1 iommu=force"/'  '/etc/default/grub'
fi


update-grub

