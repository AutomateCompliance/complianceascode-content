# platform = multi_platform_wrlinux,Red Hat Enterprise Linux 7,Oracle Linux 7,multi_platform_sle,multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if grep -q -P '^\s*MACs\s+' /etc/ssh/sshd_config; then
  sed -i 's/^\s*MACs.*/MACs hmac-sha2-512,hmac-sha2-256/' /etc/ssh/sshd_config
else
  echo "MACs hmac-sha2-512,hmac-sha2-256" >> /etc/ssh/sshd_config
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi