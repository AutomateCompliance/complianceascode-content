# platform = multi_platform_sle
# Remediation is applicable only in certain platforms
if rpm --quiet -q gdm && { [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; }; then

if ! (sed -n '/^DISPLAYMANAGER_AUTOLOGIN=\"\"/p' /etc/sysconfig/displaymanager)
then
  sed -i "s/^DISPLAYMANAGER_AUTOLOGIN=.*/DISPLAYMANAGER_AUTOLOGIN=\"\"/g" /etc/sysconfig/displaymanager
fi

if ! (sed -n '/^DISPLAYMANAGER_PASSWORD_LESS_LOGIN=\"no\"/p' /etc/sysconfig/displaymanager)
then
  sed -i "s/^DISPLAYMANAGER_PASSWORD_LESS_LOGIN=.*/DISPLAYMANAGER_PASSWORD_LESS_LOGIN=\"no\"/g" /etc/sysconfig/displaymanager
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi