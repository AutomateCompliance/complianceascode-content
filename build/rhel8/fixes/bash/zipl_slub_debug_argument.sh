# platform = Red Hat Enterprise Linux 8,Red Hat Enterprise Linux 9
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Correct BLS option using grubby, which is a thin wrapper around BLS operations
grubby --update-kernel=ALL --args="slub_debug=P"

# Ensure new kernels and boot entries retain the boot option
if [ ! -f /etc/kernel/cmdline ]; then
    echo "slub_debug=P" > /etc/kernel/cmdline
elif ! grep -q '^(.*\s)?slub_debug=P(\s.*)?$' /etc/kernel/cmdline; then
    
    sed -Ei 's/^(.*)$/\1 slub_debug=P/' /etc/kernel/cmdline
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi