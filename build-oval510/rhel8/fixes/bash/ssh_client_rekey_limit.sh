# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

var_ssh_client_rekey_limit_size="(bash-populate var_ssh_client_rekey_limit_size)"
var_ssh_client_rekey_limit_time="(bash-populate var_ssh_client_rekey_limit_time)"


main_config="/etc/ssh/ssh_config"
include_directory="/etc/ssh/ssh_config.d"

if grep -q '^[\s]*RekeyLimit.*$' "$main_config"; then
  sed -i '/^[\s]*RekeyLimit.*/d' "$main_config"
fi

for file in "$include_directory"/*.conf; do
  if grep -q '^[\s]*RekeyLimit.*$' "$file"; then
    sed -i '/^[\s]*RekeyLimit.*/d' "$file"
  fi
done

if [ -e "/etc/ssh/ssh_config.d/02-rekey-limit.conf" ] ; then
    
    LC_ALL=C sed -i "/^\s*RekeyLimit\s\+/d" "/etc/ssh/ssh_config.d/02-rekey-limit.conf"
else
    touch "/etc/ssh/ssh_config.d/02-rekey-limit.conf"
fi
cp "/etc/ssh/ssh_config.d/02-rekey-limit.conf" "/etc/ssh/ssh_config.d/02-rekey-limit.conf.bak"
# Insert at the end of the file
printf '%s\n' "RekeyLimit $var_ssh_client_rekey_limit_size $var_ssh_client_rekey_limit_time" >> "/etc/ssh/ssh_config.d/02-rekey-limit.conf"
# Clean up after ourselves.
rm "/etc/ssh/ssh_config.d/02-rekey-limit.conf.bak"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi