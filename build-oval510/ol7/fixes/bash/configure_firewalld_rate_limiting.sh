# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

common_firewalld_ratelimit_args=(--direct --add-rule ipv4 filter INPUT_direct 0 -p tcp -m limit --limit 25/minute --limit-burst 100  -j INPUT_ZONES)
if test "$(stat -c %d:%i /)" != "$(stat -c %d:%i /proc/1/root/.)"; then
    firewall-offline-cmd "${common_firewalld_ratelimit_args[@]}"
else
    firewall-cmd --permanent "${common_firewalld_ratelimit_args[@]}"
    firewall-cmd --reload
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi