# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if LC_ALL=C grep -q -m 1 "^install freevxfs" /etc/modprobe.d/freevxfs.conf ; then
	
	sed -i 's#^install freevxfs.*#install freevxfs /bin/true#g' /etc/modprobe.d/freevxfs.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/freevxfs.conf
	echo "install freevxfs /bin/true" >> /etc/modprobe.d/freevxfs.conf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi