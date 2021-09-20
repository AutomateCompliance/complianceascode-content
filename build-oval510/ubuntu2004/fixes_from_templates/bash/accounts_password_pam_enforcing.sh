# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low


    if [ -e "/etc/security/pwquality.conf" ] ; then
    
    LC_ALL=C sed -i "/^\s*enforcing = 1/Id" "/etc/security/pwquality.conf"
else
    touch "/etc/security/pwquality.conf"
fi
cp "/etc/security/pwquality.conf" "/etc/security/pwquality.conf.bak"
# Insert at the end of the file
printf '%s\n' "enforcing = 1" >> "/etc/security/pwquality.conf"
# Clean up after ourselves.
rm "/etc/security/pwquality.conf.bak"