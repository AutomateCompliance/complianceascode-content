# platform = Red Hat Enterprise Linux 8,Oracle Linux 8
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

#!/bin/bash

# put line into the file
echo "export SSH_USE_STRONG_RNG=32" > /etc/profile.d/cc-ssh-strong-rng.sh

# remove eventual override in /etc/profile
sed -i '/^[[:space:]]*export[[:space:]]\+SSH_USE_STRONG_RNG=.*$/d' /etc/profile

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi