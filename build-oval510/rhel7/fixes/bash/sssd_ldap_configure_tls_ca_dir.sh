# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_sssd_ldap_tls_ca_dir="(bash-populate var_sssd_ldap_tls_ca_dir)"


SSSD_CONF="/etc/sssd/sssd.conf"
LDAP_REGEX='[[:space:]]*\[domain\/[^]]*]([^(\n)]*(\n)+)+?[[:space:]]*ldap_tls_cacertdir'
AD_REGEX='[[:space:]]*\[domain\/[^]]*]([^(\n)]*(\n)+)+?[[:space:]]*id_provider[[:space:]]*=[[:space:]]*((?i)ad)[[:space:]]*$'
DOMAIN_REGEX="[[:space:]]*\[domain\/[^]]*]"

# Check if id_provider is not set to ad (Active Directory) which makes start_tls not applicable, note the -v option to invert the grep.
# Try to find [domain/..] and ldap_tls_cacertdir in sssd.conf, if it exists, set to '$var_sssd_ldap_tls_ca_dir'
# if ldap_tls_cacertdir isn't here, add it
# if [domain/..] doesn't exist, add it here for default domain
if grep -qvzosP $AD_REGEX $SSSD_CONF; then
        if grep -qzosP $LDAP_REGEX $SSSD_CONF; then
                
                sed -i "s#ldap_tls_cacertdir[^(\n)]*#ldap_tls_cacertdir = $var_sssd_ldap_tls_ca_dir#" $SSSD_CONF
        elif grep -qs $DOMAIN_REGEX $SSSD_CONF; then
                sed -i "/$DOMAIN_REGEX/a ldap_tls_cacertdir = $var_sssd_ldap_tls_ca_dir" $SSSD_CONF
        else
                if test -f "$SSSD_CONF"; then
                        echo -e "[domain/default]\nldap_tls_cacertdir = $var_sssd_ldap_tls_ca_dir" >> $SSSD_CONF
                else
                        echo "Config file '$SSSD_CONF' doesnt exist, not remediating, assuming non-applicability." >&2
                fi
        fi
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi