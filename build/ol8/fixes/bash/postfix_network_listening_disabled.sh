# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ] && { rpm --quiet -q postfix; }; then

var_postfix_inet_interfaces="(bash-populate var_postfix_inet_interfaces)"


if [ -e "/etc/postfix/main.cf" ] ; then
    
    LC_ALL=C sed -i "/^\s*inet_interfaces\s\+=\s\+/Id" "/etc/postfix/main.cf"
else
    touch "/etc/postfix/main.cf"
fi
cp "/etc/postfix/main.cf" "/etc/postfix/main.cf.bak"
# Insert at the end of the file
printf '%s\n' "inet_interfaces=$var_postfix_inet_interfaces" >> "/etc/postfix/main.cf"
# Clean up after ourselves.
rm "/etc/postfix/main.cf.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi