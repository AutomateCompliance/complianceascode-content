# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low


var_sudo_umask="(bash-populate var_sudo_umask)"


if /usr/sbin/visudo -qcf /etc/sudoers; then
    cp /etc/sudoers /etc/sudoers.bak
    if ! grep -P '^[\s]*Defaults.*\bumask=\w+\b\b.*$' /etc/sudoers; then
        # sudoers file doesn't define Option umask
        echo "Defaults umask=${var_sudo_umask}" >> /etc/sudoers
    else
        # sudoers file defines Option umask, remediate if appropriate value is not set
        if ! grep -P "^[\s]*Defaults.*\bumask=${var_sudo_umask}\b.*$" /etc/sudoers; then
            
            sed -Ei "s/(^[\s]*Defaults.*\bumask=)[-]?\w+(\b.*$)/\1${var_sudo_umask}\2/" /etc/sudoers
        fi
    fi
    
    # Check validity of sudoers and cleanup bak
    if /usr/sbin/visudo -qcf /etc/sudoers; then
        rm -f /etc/sudoers.bak
    else
        echo "Fail to validate remediated /etc/sudoers, reverting to original file."
        mv /etc/sudoers.bak /etc/sudoers
        false
    fi
else
    echo "Skipping remediation, /etc/sudoers failed to validate"
    false
fi