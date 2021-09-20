# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if rpm --quiet -q audit; then

chown root /var/log/audit/audit.log*

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi