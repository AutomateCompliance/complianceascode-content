# platform = multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

DEBIAN_FRONTEND=noninteractive apt-get install -y "aide"

/usr/sbin/aideinit
/bin/mv /var/lib/aide/aide.db.new /var/lib/aide/aide.db

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi