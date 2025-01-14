# platform = multi_platform_all
# reboot = false

var_removable_partition="(bash-populate var_removable_partition)"


device_regex="^\s*$var_removable_partition\s\+"
mount_option="noexec"

if grep -q $device_regex /etc/fstab ; then
    previous_opts=$(grep $device_regex /etc/fstab | awk '{print $4}')
    sed -i "s|\($device_regex.*$previous_opts\)|\1,$mount_option|" /etc/fstab
else
    echo "Not remediating, because there is no record of $var_removable_partition in /etc/fstab" >&2
    return 1
fi