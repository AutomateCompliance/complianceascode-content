# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

vfstype_points=()
readarray -t vfstype_points < <(grep -E "[[:space:]]nfs[4]?[[:space:]]" /etc/fstab | awk '{print $2}')

for vfstype_point in "${vfstype_points[@]}"
do
    mount_point_match_regexp="$(printf "[[:space:]]%s[[:space:]]" $vfstype_point)"

    # If the mount point is not in /etc/fstab, get previous mount options from /etc/mtab
    if [ "$(grep -c "$mount_point_match_regexp" /etc/fstab)" -eq 0 ]; then
        # runtime opts without some automatic kernel/userspace-added defaults
        previous_mount_opts=$(grep "$mount_point_match_regexp" /etc/mtab | head -1 |  awk '{print $4}' \
                    | sed -E "s/(rw|defaults|seclabel|sec=krb5:krb5i:krb5p)(,|$)//g;s/,$//")
        [ "$previous_mount_opts" ] && previous_mount_opts+=","
        echo " $vfstype_point nfs4 defaults,${previous_mount_opts}sec=krb5:krb5i:krb5p 0 0" >> /etc/fstab
    # If the mount_opt option is not already in the mount point's /etc/fstab entry, add it
    elif [ "$(grep "$mount_point_match_regexp" /etc/fstab | grep -c "sec=krb5:krb5i:krb5p")" -eq 0 ]; then
        previous_mount_opts=$(grep "$mount_point_match_regexp" /etc/fstab | awk '{print $4}')
        sed -i "s|\(${mount_point_match_regexp}.*${previous_mount_opts}\)|\1,sec=krb5:krb5i:krb5p|" /etc/fstab
    fi
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi