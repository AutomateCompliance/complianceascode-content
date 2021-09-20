# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! grep -x '  case "$name" in sshd|login) exec tmux ;; esac' /etc/bashrc; then
    cat >> /etc/bashrc <<'EOF'
if [ "$PS1" ]; then
  parent=$(ps -o ppid= -p $$)
  name=$(ps -o comm= -p $parent)
  case "$name" in sshd|login) exec tmux ;; esac
fi
EOF
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi