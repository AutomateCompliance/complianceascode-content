# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if rpm --quiet -q audit; then

var_auditd_space_left_percentage="(bash-populate var_auditd_space_left_percentage)"


grep -q "^space_left[[:space:]]*=.*$" /etc/audit/auditd.conf && \
  sed -i "s/^space_left[[:space:]]*=.*$/space_left = $var_auditd_space_left_percentage%/g" /etc/audit/auditd.conf || \
  echo "space_left = $var_auditd_space_left_percentage%" >> /etc/audit/auditd.conf

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi