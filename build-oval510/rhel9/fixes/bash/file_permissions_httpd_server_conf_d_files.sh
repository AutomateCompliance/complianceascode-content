# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low


readarray -t files < <(find /etc/httpd/conf.d/)
for file in "${files[@]}"; do
    if basename $file | grep -q '^.*$'; then
        chmod 0640 $file
    fi    
done