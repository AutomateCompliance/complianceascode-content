# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

cp /usr/share/doc/audit*/rules/10-base-config.rules /etc/audit/rules.d
cp /usr/share/doc/audit*/rules/11-loginuid.rules /etc/audit/rules.d
cp /usr/share/doc/audit*/rules/30-ospp-v42.rules /etc/audit/rules.d
cp /usr/share/doc/audit*/rules/43-module-load.rules /etc/audit/rules.d

augenrules --load

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi