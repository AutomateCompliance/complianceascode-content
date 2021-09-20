# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low


readarray -t files < <(find /etc/audit/rules.d/)
for file in "${files[@]}"; do
    if basename $file | grep -q '^.*rules$'; then
        chmod 0640 $file
    fi    
done
