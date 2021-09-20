# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low


readarray -t files < <(find /etc/cinder/)
for file in "${files[@]}"; do
    if basename $file | grep -q '^.*.conf$'; then
        chmod 0640 $file
    fi    
done
