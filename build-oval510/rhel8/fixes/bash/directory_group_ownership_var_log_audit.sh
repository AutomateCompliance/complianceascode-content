# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if rpm --quiet -q audit; then

if LC_ALL=C grep -m 1 -q ^log_group /etc/audit/auditd.conf; then
  GROUP=$(awk -F "=" '/log_group/ {print $2}' /etc/audit/auditd.conf | tr -d ' ')
  if ! [ "${GROUP}" == 'root' ] ; then
    chgrp ${GROUP} /var/log/audit
  else
    chgrp root /var/log/audit
  fi
else
  chgrp root /var/log/audit
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi