# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

tmux_conf="/etc/tmux.conf"

if grep -qP '^\s*set\s+-g\s+lock-command' "$tmux_conf" ; then
    sed -i 's/^\s*set\s\+-g\s\+lock-command.*$/set -g lock-command vlock/' "$tmux_conf"
else
    echo "set -g lock-command vlock" >> "$tmux_conf"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi