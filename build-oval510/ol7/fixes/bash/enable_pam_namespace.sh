# platform = multi_platform_fedora,Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_ol
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

if ! grep -Eq '^\s*session\s+required\s+pam_namespace.so\s*$' '/etc/pam.d/login' ; then
    echo "session    required     pam_namespace.so" >> "/etc/pam.d/login"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi