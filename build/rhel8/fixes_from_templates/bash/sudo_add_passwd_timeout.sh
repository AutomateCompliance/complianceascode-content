# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low


var_sudo_passwd_timeout="(bash-populate var_sudo_passwd_timeout)"


if /usr/sbin/visudo -qcf /etc/sudoers; then
    cp /etc/sudoers /etc/sudoers.bak
    if ! grep -P '^[\s]*Defaults.*\bpasswd_timeout=\w+\b\b.*$' /etc/sudoers; then
        # sudoers file doesn't define Option passwd_timeout
        echo "Defaults passwd_timeout=${var_sudo_passwd_timeout}" >> /etc/sudoers
    else
        # sudoers file defines Option passwd_timeout, remediate if appropriate value is not set
        if ! grep -P "^[\s]*Defaults.*\bpasswd_timeout=${var_sudo_passwd_timeout}\b.*$" /etc/sudoers; then
            
            sed -Ei "s/(^[\s]*Defaults.*\bpasswd_timeout=)[-]?\w+(\b.*$)/\1${var_sudo_passwd_timeout}\2/" /etc/sudoers
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