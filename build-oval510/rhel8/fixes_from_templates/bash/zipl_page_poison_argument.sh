# platform = Red Hat Enterprise Linux 8,Red Hat Enterprise Linux 9

# Correct BLS option using grubby, which is a thin wrapper around BLS operations
grubby --update-kernel=ALL --args="page_poison=1"

# Ensure new kernels and boot entries retain the boot option
if [ ! -f /etc/kernel/cmdline ]; then
    echo "page_poison=1" > /etc/kernel/cmdline
elif ! grep -q '^(.*\s)?page_poison=1(\s.*)?$' /etc/kernel/cmdline; then
    
    sed -Ei 's/^(.*)$/\1 page_poison=1/' /etc/kernel/cmdline
fi