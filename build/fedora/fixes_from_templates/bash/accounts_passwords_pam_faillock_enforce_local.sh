# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low


    if [ -e "/etc/security/faillock.conf" ] ; then
    
    LC_ALL=C sed -i "/^\s*local_users_only/Id" "/etc/security/faillock.conf"
else
    touch "/etc/security/faillock.conf"
fi
cp "/etc/security/faillock.conf" "/etc/security/faillock.conf.bak"
# Insert at the end of the file
printf '%s\n' "local_users_only" >> "/etc/security/faillock.conf"
# Clean up after ourselves.
rm "/etc/security/faillock.conf.bak"