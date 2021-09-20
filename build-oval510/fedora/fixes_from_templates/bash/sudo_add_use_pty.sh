# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low

if /usr/sbin/visudo -qcf /etc/sudoers; then
    cp /etc/sudoers /etc/sudoers.bak
    if ! grep -P '^[\s]*Defaults.*\buse_pty\b.*$' /etc/sudoers; then
        # sudoers file doesn't define Option use_pty
        echo "Defaults use_pty" >> /etc/sudoers
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