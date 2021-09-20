# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

readarray -t files < <(find /etc/ssh/)
for file in "${files[@]}"; do
    if basename $file | grep -q '^.*_key$'; then
        chmod 0640 $file
    fi    
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi