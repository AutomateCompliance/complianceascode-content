# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low


readarray -t files < <(find /etc/ssh/)
for file in "${files[@]}"; do
    if basename $file | grep -q '^.*.pub$'; then
        chmod 0644 $file
    fi    
done
